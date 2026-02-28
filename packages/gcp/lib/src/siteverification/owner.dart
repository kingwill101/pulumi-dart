import 'package:pulumi/pulumi.dart' as pulumi;
import 'owner_args.dart';

/// An owner is an additional user that may manage a verified web site in the
/// [Google Search Console](https://www.google.com/webmasters/tools/). There
/// are two types of web resource owners:
///
/// * Verified owners, which are added to a web resource automatically when it
/// is created (i.e., when the resource is verified). A verified owner is
/// determined by the identity of the user requesting verification.
/// * Additional owners, which can be added to the resource by verified owners.
///
/// `gcp.siteverification.Owner` creates additional owners. If your web site
/// was verified using the
/// `gcp.siteverification.WebResource`
/// resource then you (or the identity was used to create the resource, such as a
/// service account) are already an owner.
///
/// > **Note:** The email address of the owner must belong to a Google account,
/// such as a Gmail account, a Google Workspace account, or a GCP service account.
///
/// Working with site verification requires the `https://www.googleapis.com/auth/siteverification`
/// authentication scope. See the
/// Google Provider authentication documentation
/// to learn how to configure additional scopes.
///
/// To get more information about site owners, see:
///
/// * [API documentation](https://developers.google.com/site-verification/v1)
/// * How-to Guides
/// * [Getting Started](https://developers.google.com/site-verification/v1/getting_started)
///
/// ## Example Usage
///
/// ### Site Verification Storage Bucket
///
/// This example uses the `FILE` verification method to verify ownership of web site hosted
/// in a Google Cloud Storage bucket. Ownership is proved by creating a file with a Google-provided
/// value in a known location. The user applying this configuration will automatically be
/// added as a verified owner, and the `gcp.siteverification.Owner` resource will add
/// `user@example.com` as an additional owner.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "example-storage-bucket",
///     location: "US",
/// });
/// const token = gcp.siteverification.getTokenOutput({
///     type: "SITE",
///     identifier: pulumi.interpolate`https://${bucket.name}.storage.googleapis.com/`,
///     verificationMethod: "FILE",
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: token.apply(token => token.token),
///     content: token.apply(token => `google-site-verification: ${token.token}`),
///     bucket: bucket.name,
/// });
/// const publicRule = new gcp.storage.ObjectAccessControl("public_rule", {
///     bucket: bucket.name,
///     object: object.name,
///     role: "READER",
///     entity: "allUsers",
/// });
/// const example = new gcp.siteverification.WebResource("example", {
///     site: {
///         type: token.apply(token => token.type),
///         identifier: token.apply(token => token.identifier),
///     },
///     verificationMethod: token.apply(token => token.verificationMethod),
/// });
/// const exampleOwner = new gcp.siteverification.Owner("example", {
///     webResourceId: example.id,
///     email: "user@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="example-storage-bucket",
///     location="US")
/// token = gcp.siteverification.get_token_output(type="SITE",
///     identifier=bucket.name.apply(lambda name: f"https://{name}.storage.googleapis.com/"),
///     verification_method="FILE")
/// object = gcp.storage.BucketObject("object",
///     name=token.token,
///     content=token.apply(lambda token: f"google-site-verification: {token.token}"),
///     bucket=bucket.name)
/// public_rule = gcp.storage.ObjectAccessControl("public_rule",
///     bucket=bucket.name,
///     object=object.name,
///     role="READER",
///     entity="allUsers")
/// example = gcp.siteverification.WebResource("example",
///     site={
///         "type": token.type,
///         "identifier": token.identifier,
///     },
///     verification_method=token.verification_method)
/// example_owner = gcp.siteverification.Owner("example",
///     web_resource_id=example.id,
///     email="user@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "example-storage-bucket",
///         Location = "US",
///     });
///
///     var token = Gcp.SiteVerification.GetToken.Invoke(new()
///     {
///         Type = "SITE",
///         Identifier = $"https://{bucket.Name}.storage.googleapis.com/",
///         VerificationMethod = "FILE",
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = token.Apply(getTokenResult => getTokenResult.Token),
///         Content = $"google-site-verification: {token.Apply(getTokenResult => getTokenResult.Token)}",
///         Bucket = bucket.Name,
///     });
///
///     var publicRule = new Gcp.Storage.ObjectAccessControl("public_rule", new()
///     {
///         Bucket = bucket.Name,
///         Object = @object.Name,
///         Role = "READER",
///         Entity = "allUsers",
///     });
///
///     var example = new Gcp.SiteVerification.WebResource("example", new()
///     {
///         Site = new Gcp.SiteVerification.Inputs.WebResourceSiteArgs
///         {
///             Type = token.Apply(getTokenResult => getTokenResult.Type),
///             Identifier = token.Apply(getTokenResult => getTokenResult.Identifier),
///         },
///         VerificationMethod = token.Apply(getTokenResult => getTokenResult.VerificationMethod),
///     });
///
///     var exampleOwner = new Gcp.SiteVerification.Owner("example", new()
///     {
///         WebResourceId = example.Id,
///         Email = "user@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/siteverification"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:     pulumi.String("example-storage-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		token := siteverification.GetTokenOutput(ctx, siteverification.GetTokenOutputArgs{
/// 			Type: pulumi.String("SITE"),
/// 			Identifier: bucket.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("https://%v.storage.googleapis.com/", name), nil
/// 			}).(pulumi.StringOutput),
/// 			VerificationMethod: pulumi.String("FILE"),
/// 		}, nil)
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name: pulumi.String(token.ApplyT(func(token siteverification.GetTokenResult) (*string, error) {
/// 				return &token.Token, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Content: token.ApplyT(func(token siteverification.GetTokenResult) (string, error) {
/// 				return fmt.Sprintf("google-site-verification: %v", token.Token), nil
/// 			}).(pulumi.StringOutput),
/// 			Bucket: bucket.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewObjectAccessControl(ctx, "public_rule", &storage.ObjectAccessControlArgs{
/// 			Bucket: bucket.Name,
/// 			Object: object.Name,
/// 			Role:   pulumi.String("READER"),
/// 			Entity: pulumi.String("allUsers"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := siteverification.NewWebResource(ctx, "example", &siteverification.WebResourceArgs{
/// 			Site: &siteverification.WebResourceSiteArgs{
/// 				Type: token.ApplyT(func(token siteverification.GetTokenResult) (*string, error) {
/// 					return &token.Type, nil
/// 				}).(pulumi.StringPtrOutput),
/// 				Identifier: token.ApplyT(func(token siteverification.GetTokenResult) (*string, error) {
/// 					return &token.Identifier, nil
/// 				}).(pulumi.StringPtrOutput),
/// 			},
/// 			VerificationMethod: pulumi.String(token.ApplyT(func(token siteverification.GetTokenResult) (*string, error) {
/// 				return &token.VerificationMethod, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siteverification.NewOwner(ctx, "example", &siteverification.OwnerArgs{
/// 			WebResourceId: example.ID(),
/// 			Email:         pulumi.String("user@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.siteverification.SiteverificationFunctions;
/// import com.pulumi.gcp.siteverification.inputs.GetTokenArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.storage.ObjectAccessControl;
/// import com.pulumi.gcp.storage.ObjectAccessControlArgs;
/// import com.pulumi.gcp.siteverification.WebResource;
/// import com.pulumi.gcp.siteverification.WebResourceArgs;
/// import com.pulumi.gcp.siteverification.inputs.WebResourceSiteArgs;
/// import com.pulumi.gcp.siteverification.Owner;
/// import com.pulumi.gcp.siteverification.OwnerArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("example-storage-bucket")
///             .location("US")
///             .build());
///
///         final var token = SiteverificationFunctions.getToken(GetTokenArgs.builder()
///             .type("SITE")
///             .identifier(bucket.name().applyValue(_name -> String.format("https://%s.storage.googleapis.com/", _name)))
///             .verificationMethod("FILE")
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name(token.applyValue(_token -> _token.token()))
///             .content(token.applyValue(_token -> String.format("google-site-verification: %s", _token.token())))
///             .bucket(bucket.name())
///             .build());
///
///         var publicRule = new ObjectAccessControl("publicRule", ObjectAccessControlArgs.builder()
///             .bucket(bucket.name())
///             .object(object.name())
///             .role("READER")
///             .entity("allUsers")
///             .build());
///
///         var example = new WebResource("example", WebResourceArgs.builder()
///             .site(WebResourceSiteArgs.builder()
///                 .type(token.applyValue(_token -> _token.type()))
///                 .identifier(token.applyValue(_token -> _token.identifier()))
///                 .build())
///             .verificationMethod(token.applyValue(_token -> _token.verificationMethod()))
///             .build());
///
///         var exampleOwner = new Owner("exampleOwner", OwnerArgs.builder()
///             .webResourceId(example.id())
///             .email("user@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: example-storage-bucket
///       location: US
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: ${token.token}
///       content: 'google-site-verification: ${token.token}'
///       bucket: ${bucket.name}
///   publicRule:
///     type: gcp:storage:ObjectAccessControl
///     name: public_rule
///     properties:
///       bucket: ${bucket.name}
///       object: ${object.name}
///       role: READER
///       entity: allUsers
///   example:
///     type: gcp:siteverification:WebResource
///     properties:
///       site:
///         type: ${token.type}
///         identifier: ${token.identifier}
///       verificationMethod: ${token.verificationMethod}
///   exampleOwner:
///     type: gcp:siteverification:Owner
///     name: example
///     properties:
///       webResourceId: ${example.id}
///       email: user@example.com
/// variables:
///   token:
///     fn::invoke:
///       function: gcp:siteverification:getToken
///       arguments:
///         type: SITE
///         identifier: https://${bucket.name}.storage.googleapis.com/
///         verificationMethod: FILE
/// ```
///
///
/// ## Import
///
/// Owner can be imported using this format:
///
/// * `webResource/{{web_resource_id}}/{{email}}`
///
/// When using the `pulumi import` command, Site owners can be imported using the format above. For example:
///
/// ```sh
/// $ pulumi import gcp:siteverification/owner:Owner default webResource/{{web_resource_id}}/{{email}}
/// ```
///
/// verified owners is to delete the web resource itself.
class Owner extends pulumi.CustomResource {
  /// The email of the user to be added as an owner.
  ///
  /// - - -
  late final pulumi.Output<String> email;
  /// The id of of the web resource to which the owner will be added, in the form `webResource/<resource_id>`,
  /// such as `webResource/https://www.example.com/`
  late final pulumi.Output<String> webResourceId;

  /// Creates a new [Owner].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Owner]. {@macro pulumi_siteverification_owner_owner_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Owner(
    String name, {
    OwnerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:siteverification/owner:Owner',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.email = registerOutput<String>('email');
    this.webResourceId = registerOutput<String>('webResourceId');
  }
}
