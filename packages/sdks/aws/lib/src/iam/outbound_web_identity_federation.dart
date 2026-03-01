import 'package:pulumi/pulumi.dart' as pulumi;
import 'outbound_web_identity_federation_state.dart';

/// Manages an AWS IAM (Identity & Access Management) Outbound Web Identity Federation.
///
/// > **NOTE:** Creating this Terraform resource enables IAM Outbound Web Identity Federation and deleting this Terraform resource disables IAM Outbound Web Identity Federation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.OutboundWebIdentityFederation("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.OutboundWebIdentityFederation("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.OutboundWebIdentityFederation("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewOutboundWebIdentityFederation(ctx, "example", nil)
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
/// import com.pulumi.aws.iam.OutboundWebIdentityFederation;
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
///         var example = new OutboundWebIdentityFederation("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:OutboundWebIdentityFederation
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Outbound Web Identity Federation resources using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:iam/outboundWebIdentityFederation:OutboundWebIdentityFederation example 123456789012
/// ```
class OutboundWebIdentityFederation extends pulumi.CustomResource {
  /// A unique issuer URL for your AWS account that hosts the OpenID Connect (OIDC) discovery endpoints.
  late final pulumi.Output<String> issuerIdentifier;

  /// Creates a new [OutboundWebIdentityFederation].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  OutboundWebIdentityFederation(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/outboundWebIdentityFederation:OutboundWebIdentityFederation',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.issuerIdentifier = registerOutput<String>('issuerIdentifier');
  }

  /// Gets an existing [OutboundWebIdentityFederation] resource's state with the given [name] and [id].
  static OutboundWebIdentityFederation get(
    String name,
    pulumi.Input<String> id, {
    OutboundWebIdentityFederationState? state,
  }) {
    return OutboundWebIdentityFederation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OutboundWebIdentityFederation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/outboundWebIdentityFederation:OutboundWebIdentityFederation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.issuerIdentifier = registerOutput<String>('issuerIdentifier');
  }
}
