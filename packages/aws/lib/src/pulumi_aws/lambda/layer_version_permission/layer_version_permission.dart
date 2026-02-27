import 'package:pulumi/pulumi.dart';
import 'layer_version_permission_args.dart';

/// Manages an AWS Lambda Layer Version Permission. Use this resource to share Lambda Layers with other AWS accounts, organizations, or make them publicly accessible.
///
/// For information about Lambda Layer Permissions and how to use them, see [Using Resource-based Policies for AWS Lambda](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountlayer).
///
/// > **Note:** Setting `skip_destroy` to `true` means that the AWS Provider will not destroy any layer version permission, even when running `pulumi destroy`. Layer version permissions are thus intentional dangling resources that are not managed by Pulumi and may incur extra expense in your AWS account.
///
/// ## Example Usage
///
/// ### Share Layer with Specific Account
///
///
///
/// ### Share Layer with Organization
///
///
///
/// ### Share Layer Publicly
///
///
///
/// ### Multiple Account Access
///
///
///
/// ## Import
///
/// For backwards compatibility, the following legacy `pulumi import` command is also supported:
///
/// ```sh
/// $ pulumi import aws:lambda/layerVersionPermission:LayerVersionPermission example arn:aws:lambda:us-west-2:123456789012:layer:shared_utilities,1
/// ```
class LayerVersionPermission extends CustomResource {
  /// Action that will be allowed. `lambda:GetLayerVersion` is the standard value for layer access.
  late final Output<String> action;

  /// Name or ARN of the Lambda Layer.
  late final Output<String> layerName;

  /// AWS Organization ID that should be able to use your Lambda Layer. `principal` should be set to `*` when `organization_id` is provided.
  late final Output<String?> organizationId;

  /// Full Lambda Layer Permission policy.
  late final Output<String> policy;

  /// AWS account ID that should be able to use your Lambda Layer. Use `*` to share with all AWS accounts.
  late final Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Unique identifier for the current revision of the policy.
  late final Output<String> revisionId;

  /// Whether to retain the permission when the resource is destroyed. Default is `false`.
  late final Output<bool?> skipDestroy;

  /// Unique identifier for the permission statement.
  late final Output<String> statementId;

  /// Version of Lambda Layer to grant access to. Note: permissions only apply to a single version of a layer.
  ///
  /// The following arguments are optional:
  late final Output<int> versionNumber;

  LayerVersionPermission(
    String name, {
    LayerVersionPermissionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lambda/layerVersionPermission:LayerVersionPermission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.layerName = registerOutput<String>('layerName');
    this.organizationId = registerOutput<String?>('organizationId');
    this.policy = registerOutput<String>('policy');
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.revisionId = registerOutput<String>('revisionId');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.statementId = registerOutput<String>('statementId');
    this.versionNumber = registerOutput<int>('versionNumber');
  }
}
