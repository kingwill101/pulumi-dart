import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_service_access_args.dart';
import 'aws_service_access_state.dart';

/// Manages trusted access between an AWS service and AWS Organizations.
///
/// &gt; **Note:** AWS recommends enabling and disabling trusted access for a service through the service's own console or its AWS CLI commands or API operation equivalents, rather than using this resource directly. Using the service-specific tooling ensures that the service can perform the required steps when enabling trusted access (e.g. creating any required resources) and any required clean up operations when disabling trusted access. See the [AWS Organizations User Guide](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html) for more details. The complete list of AWS services that support trusted access with AWS Organizations is available in the [Services that work with Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html) page.
///
/// &gt; **Note:** This resource requires the Organizations management account.
///
/// &gt; **NOTE:** Terraform provides both this standalone AWS service access resource and exclusive service access defined in-line in the `aws.organizations.Organization` resource via the `awsServiceAccessPrincipals` argument. At this time, you cannot use the service access in conjunction with this resource otherwise it will cause a perpetual difference in plan output. You can optionally use the generic Terraform resource lifecycle configuration block with `ignoreChanges` in the `aws.organizations.Organization` resource to manage additional service access via this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.AwsServiceAccess("example", {servicePrincipal: "tagpolicies.tag.amazonaws.com"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.AwsServiceAccess("example", service_principal="tagpolicies.tag.amazonaws.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Organizations.AwsServiceAccess("example", new()
///     {
///         ServicePrincipal = "tagpolicies.tag.amazonaws.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewAwsServiceAccess(ctx, "example", &organizations.AwsServiceAccessArgs{
/// 			ServicePrincipal: pulumi.String("tagpolicies.tag.amazonaws.com"),
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
///   }
/// }
///
/// resource "aws_organizations_awsserviceaccess" "example" {
///   service_principal = "tagpolicies.tag.amazonaws.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.organizations.AwsServiceAccess;
/// import com.pulumi.aws.organizations.AwsServiceAccessArgs;
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
///         var example = new AwsServiceAccess("example", AwsServiceAccessArgs.builder()
///             .servicePrincipal("tagpolicies.tag.amazonaws.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:organizations:AwsServiceAccess
///     properties:
///       servicePrincipal: tagpolicies.tag.amazonaws.com
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `servicePrincipal` (String) Service principal name of the AWS service for which you want to enable integration.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import trusted access using the `servicePrincipal`. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/awsServiceAccess:AwsServiceAccess example tagpolicies.tag.amazonaws.com
/// ```
class AwsServiceAccess extends pulumi.CustomResource {
  /// Date and time that the service was enabled, in RFC 3339 format.
  late final pulumi.Output<String> dateEnabled;
  /// Service principal of the AWS service to enable. For example, `tagpolicies.tag.amazonaws.com`. Changing this value will force a new resource.
  late final pulumi.Output<String> servicePrincipal;

  /// Creates a new [AwsServiceAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AwsServiceAccess]. {@macro pulumi_organizations_aws_service_access_aws_service_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AwsServiceAccess(
    String name, {
    AwsServiceAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/awsServiceAccess:AwsServiceAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    dateEnabled = registerOutput<String>('dateEnabled');
    servicePrincipal = registerOutput<String>('servicePrincipal');
  }

  /// Gets an existing [AwsServiceAccess] resource's state with the given [name] and [id].
  static AwsServiceAccess get(
    String name,
    pulumi.Input<String> id, {
    AwsServiceAccessState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AwsServiceAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AwsServiceAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/awsServiceAccess:AwsServiceAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dateEnabled = registerOutput<String>('dateEnabled');
    servicePrincipal = registerOutput<String>('servicePrincipal');
  }

  /// Creates a typed reference to an existing [AwsServiceAccess] resource.
  AwsServiceAccess.reference(String urn)
    : super(
        'aws:organizations/awsServiceAccess:AwsServiceAccess',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dateEnabled = registerOutput<String>('dateEnabled');
    servicePrincipal = registerOutput<String>('servicePrincipal');
  }
}
