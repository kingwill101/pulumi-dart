import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_features_args.dart';

/// Manages centralized root access features across AWS member accounts managed using AWS Organizations. More information about managing root access in IAM can be found in the [Centralize root access for member accounts](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-enable-root-access.html).
///
/// > **NOTE:** The AWS account utilizing this resource must be an Organizations management account. Also, you must enable trusted access for AWS Identity and Access Management in AWS Organizations.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import root access features using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/organizationsFeatures:OrganizationsFeatures example o-1234567
/// ```
class OrganizationsFeatures extends pulumi.CustomResource {
  /// List of IAM features to enable. Valid values are `RootCredentialsManagement` and `RootSessions`.
  late final pulumi.Output<List<String>> enabledFeatures;

  OrganizationsFeatures(
    String name, {
    OrganizationsFeaturesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/organizationsFeatures:OrganizationsFeatures',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabledFeatures = registerOutput<List<String>>('enabledFeatures');
  }
}
