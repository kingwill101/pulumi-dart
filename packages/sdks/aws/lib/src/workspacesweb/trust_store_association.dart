import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_association_args.dart';
import 'trust_store_association_state.dart';

/// Resource for managing an AWS WorkSpaces Web Trust Store Association.
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
/// const example = new aws.workspacesweb.Portal("example", {displayName: "example"});
/// const exampleTrustStore = new aws.workspacesweb.TrustStore("example", {certificateList: [std.file({
///     input: "certificate.pem",
/// }).then(invoke => std.base64encode({
///     input: invoke.result,
/// })).then(invoke => invoke.result)]});
/// const exampleTrustStoreAssociation = new aws.workspacesweb.TrustStoreAssociation("example", {
///     trustStoreArn: exampleTrustStore.trustStoreArn,
///     portalArn: example.portalArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.workspacesweb.Portal("example", display_name="example")
/// example_trust_store = aws.workspacesweb.TrustStore("example", certificate_list=[std.base64encode(input=std.file(input="certificate.pem").result).result])
/// example_trust_store_association = aws.workspacesweb.TrustStoreAssociation("example",
///     trust_store_arn=example_trust_store.trust_store_arn,
///     portal_arn=example.portal_arn)
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
///     var example = new Aws.WorkSpacesWeb.Portal("example", new()
///     {
///         DisplayName = "example",
///     });
///
///     var exampleTrustStore = new Aws.WorkSpacesWeb.TrustStore("example", new()
///     {
///         CertificateList = new[]
///         {
///             Std.File.Invoke(new()
///             {
///                 Input = "certificate.pem",
///             }).Apply(invoke => Std.Base64encode.Invoke(new()
///             {
///                 Input = invoke.Result,
///             })).Apply(invoke => invoke.Result),
///         },
///     });
///
///     var exampleTrustStoreAssociation = new Aws.WorkSpacesWeb.TrustStoreAssociation("example", new()
///     {
///         TrustStoreArn = exampleTrustStore.TrustStoreArn,
///         PortalArn = example.PortalArn,
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
/// 		example, err := workspacesweb.NewPortal(ctx, "example", &workspacesweb.PortalArgs{
/// 			DisplayName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: std.File(ctx, &std.FileArgs{
/// 				Input: "certificate.pem",
/// 			}, nil).Result,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTrustStore, err := workspacesweb.NewTrustStore(ctx, "example", &workspacesweb.TrustStoreArgs{
/// 			CertificateList: []*string{
/// 				invokeBase64encode.Result,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspacesweb.NewTrustStoreAssociation(ctx, "example", &workspacesweb.TrustStoreAssociationArgs{
/// 			TrustStoreArn: exampleTrustStore.TrustStoreArn,
/// 			PortalArn:     example.PortalArn,
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
/// import com.pulumi.aws.workspacesweb.Portal;
/// import com.pulumi.aws.workspacesweb.PortalArgs;
/// import com.pulumi.aws.workspacesweb.TrustStore;
/// import com.pulumi.aws.workspacesweb.TrustStoreArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.std.inputs.Base64encodeArgs;
/// import com.pulumi.aws.workspacesweb.TrustStoreAssociation;
/// import com.pulumi.aws.workspacesweb.TrustStoreAssociationArgs;
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
///         var example = new Portal("example", PortalArgs.builder()
///             .displayName("example")
///             .build());
///
///         var exampleTrustStore = new TrustStore("exampleTrustStore", TrustStoreArgs.builder()
///             .certificateList(List.of(StdFunctions.base64encode(Base64encodeArgs.builder()
///                 .input(StdFunctions.file(FileArgs.builder()
///                     .input("certificate.pem")
///                     .build()).result())
///                 .build()).result()))
///             .build());
///
///         var exampleTrustStoreAssociation = new TrustStoreAssociation("exampleTrustStoreAssociation", TrustStoreAssociationArgs.builder()
///             .trustStoreArn(exampleTrustStore.trustStoreArn())
///             .portalArn(example.portalArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspacesweb:Portal
///     properties:
///       displayName: example
///   exampleTrustStore:
///     type: aws:workspacesweb:TrustStore
///     name: example
///     properties:
///       certificateList:
///         - fn::invoke:
///             function: std:base64encode
///             arguments:
///               input:
///                 fn::invoke:
///                   function: std:file
///                   arguments:
///                     input: certificate.pem
///                   return: result
///             return: result
///   exampleTrustStoreAssociation:
///     type: aws:workspacesweb:TrustStoreAssociation
///     name: example
///     properties:
///       trustStoreArn: ${exampleTrustStore.trustStoreArn}
///       portalArn: ${example.portalArn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Trust Store Association using the `trust_store_arn,portal_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/trustStoreAssociation:TrustStoreAssociation example arn:aws:workspaces-web:us-west-2:123456789012:trustStore/trust_store-id-12345678,arn:aws:workspaces-web:us-west-2:123456789012:portal/portal-id-12345678
/// ```
class TrustStoreAssociation extends pulumi.CustomResource {
  /// ARN of the portal to associate with the trust store. Forces replacement if changed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the trust store to associate with the portal. Forces replacement if changed.
  late final pulumi.Output<String> trustStoreArn;

  /// Creates a new [TrustStoreAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrustStoreAssociation]. {@macro pulumi_workspacesweb_trust_store_association_trust_store_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrustStoreAssociation(
    String name, {
    TrustStoreAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:workspacesweb/trustStoreAssociation:TrustStoreAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    portalArn = registerOutput<String>('portalArn');
    region = registerOutput<String>('region');
    trustStoreArn = registerOutput<String>('trustStoreArn');
  }

  /// Gets an existing [TrustStoreAssociation] resource's state with the given [name] and [id].
  static TrustStoreAssociation get(
    String name,
    pulumi.Input<String> id, {
    TrustStoreAssociationState? state,
  }) {
    return TrustStoreAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrustStoreAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:workspacesweb/trustStoreAssociation:TrustStoreAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    portalArn = registerOutput<String>('portalArn');
    region = registerOutput<String>('region');
    trustStoreArn = registerOutput<String>('trustStoreArn');
  }
}
