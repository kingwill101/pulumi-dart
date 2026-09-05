import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_args.dart';
import 'trust_store_certificate.dart';
import 'trust_store_state.dart';

/// Resource for managing an AWS WorkSpaces Web Trust Store.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.workspacesweb.TrustStore("example", {certificates: [{
///     body: std.file({
///         input: "certificate.pem",
///     }).then(invoke => invoke.result),
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.workspacesweb.TrustStore("example", certificates=[{
///     "body": std.file(input="certificate.pem").result,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkSpacesWeb.TrustStore("example", new()
///     {
///         Certificates = new[]
///         {
///             new Aws.WorkSpacesWeb.Inputs.TrustStoreCertificateArgs
///             {
///                 Body = Std.File.Invoke(new()
///                 {
///                     Input = "certificate.pem",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "certificate.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewTrustStore(ctx, "example", &workspacesweb.TrustStoreArgs{
/// 			Certificates: workspacesweb.TrustStoreCertificateArray{
/// 				&workspacesweb.TrustStoreCertificateArgs{
/// 					Body: pulumi.String(invokeFile.Result),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_workspacesweb_truststore" "example" {
///   certificates {
///     body = file("certificate.pem")
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspacesweb.TrustStore;
/// import com.pulumi.aws.workspacesweb.TrustStoreArgs;
/// import com.pulumi.aws.workspacesweb.inputs.TrustStoreCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new TrustStore("example", TrustStoreArgs.builder()
///             .certificates(TrustStoreCertificateArgs.builder()
///                 .body(StdFunctions.file(FileArgs.builder()
///                     .input("certificate.pem")
///                     .build()).result())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspacesweb:TrustStore
///     properties:
///       certificates:
///         - body:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: certificate.pem
///               return: result
/// ```
///
///
/// ### Multiple Certificates
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.workspacesweb.TrustStore("example", {
///     certificates: [
///         {
///             body: std.file({
///                 input: "certificate1.pem",
///             }).then(invoke => invoke.result),
///         },
///         {
///             body: std.file({
///                 input: "certificate2.pem",
///             }).then(invoke => invoke.result),
///         },
///     ],
///     tags: {
///         Name: "example-trust-store",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.workspacesweb.TrustStore("example",
///     certificates=[
///         {
///             "body": std.file(input="certificate1.pem").result,
///         },
///         {
///             "body": std.file(input="certificate2.pem").result,
///         },
///     ],
///     tags={
///         "Name": "example-trust-store",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkSpacesWeb.TrustStore("example", new()
///     {
///         Certificates = new[]
///         {
///             new Aws.WorkSpacesWeb.Inputs.TrustStoreCertificateArgs
///             {
///                 Body = Std.File.Invoke(new()
///                 {
///                     Input = "certificate1.pem",
///                 }).Apply(invoke => invoke.Result),
///             },
///             new Aws.WorkSpacesWeb.Inputs.TrustStoreCertificateArgs
///             {
///                 Body = Std.File.Invoke(new()
///                 {
///                     Input = "certificate2.pem",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///         Tags =
///         {
///             { "Name", "example-trust-store" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "certificate1.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "certificate2.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewTrustStore(ctx, "example", &workspacesweb.TrustStoreArgs{
/// 			Certificates: workspacesweb.TrustStoreCertificateArray{
/// 				&workspacesweb.TrustStoreCertificateArgs{
/// 					Body: pulumi.String(invokeFile.Result),
/// 				},
/// 				&workspacesweb.TrustStoreCertificateArgs{
/// 					Body: pulumi.String(invokeFile1.Result),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-trust-store"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_workspacesweb_truststore" "example" {
///   certificates {
///     body = file("certificate1.pem")
///   }
///   certificates {
///     body = file("certificate2.pem")
///   }
///   tags = {
///     "Name" = "example-trust-store"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspacesweb.TrustStore;
/// import com.pulumi.aws.workspacesweb.TrustStoreArgs;
/// import com.pulumi.aws.workspacesweb.inputs.TrustStoreCertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new TrustStore("example", TrustStoreArgs.builder()
///             .certificates(
///                 TrustStoreCertificateArgs.builder()
///                     .body(StdFunctions.file(FileArgs.builder()
///                         .input("certificate1.pem")
///                         .build()).result())
///                     .build(),
///                 TrustStoreCertificateArgs.builder()
///                     .body(StdFunctions.file(FileArgs.builder()
///                         .input("certificate2.pem")
///                         .build()).result())
///                     .build())
///             .tags(Map.of("Name", "example-trust-store"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspacesweb:TrustStore
///     properties:
///       certificates:
///         - body:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: certificate1.pem
///               return: result
///         - body:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: certificate2.pem
///               return: result
///       tags:
///         Name: example-trust-store
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Trust Store using the `trustStoreArn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/trustStore:TrustStore example arn:aws:workspaces-web:us-west-2:123456789012:trustStore/trust_store-id-12345678
/// ```
class TrustStore extends pulumi.CustomResource {
  /// List of ARNs of the web portals associated with the trust store.
  late final pulumi.Output<List<String>> associatedPortalArns;
  /// Set of certificates to include in the trust store. See Certificate below.
  late final pulumi.Output<List<TrustStoreCertificate>?> certificates;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of the trust store.
  late final pulumi.Output<String> trustStoreArn;

  /// Creates a new [TrustStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrustStore]. {@macro pulumi_workspacesweb_trust_store_trust_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrustStore(
    String name, {
    TrustStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/trustStore:TrustStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    certificates = registerOutput<List<TrustStoreCertificate>?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustStoreCertificate>(guardedValue, (value) => TrustStoreCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustStoreArn = registerOutput<String>('trustStoreArn');
  }

  /// Gets an existing [TrustStore] resource's state with the given [name] and [id].
  static TrustStore get(
    String name,
    pulumi.Input<String> id, {
    TrustStoreState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TrustStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TrustStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/trustStore:TrustStore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    certificates = registerOutput<List<TrustStoreCertificate>?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustStoreCertificate>(guardedValue, (value) => TrustStoreCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustStoreArn = registerOutput<String>('trustStoreArn');
  }

  /// Creates a typed reference to an existing [TrustStore] resource.
  TrustStore.reference(String urn)
    : super(
        'aws:workspacesweb/trustStore:TrustStore',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    associatedPortalArns = registerOutput<List<String>>('associatedPortalArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    certificates = registerOutput<List<TrustStoreCertificate>?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustStoreCertificate>(guardedValue, (value) => TrustStoreCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustStoreArn = registerOutput<String>('trustStoreArn');
  }
}
