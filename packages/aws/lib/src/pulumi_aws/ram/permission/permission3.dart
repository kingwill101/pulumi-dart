import 'package:pulumi/pulumi.dart';
import '../permission_timeouts/permission_timeouts.dart';
import 'permission_args3.dart';

/// Manages an AWS RAM (Resource Access Manager) Permission.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) Permission ARN.
///
///
/// Using `pulumi import`, import RAM (Resource Access Manager) Permission using the `example_id_arg`. For example:
///
/// ```sh
/// $ pulumi import aws:ram/permission:Permission example arn:aws:ram:us-west-1:123456789012:permission/test-permission
/// ```
class Permission3 extends CustomResource {
  /// ARN of the permission.
  late final Output<String> arn;

  /// Specifies whether the version of the managed permission used by this resource share is the default version for this managed permission.
  late final Output<bool> defaultVersion;

  /// Specifies the name of the customer managed permission. The name must be unique within the AWS Region.
  late final Output<String> name;

  /// A string in JSON format string that contains the following elements of a resource-based policy: Effect, Action and Condition.
  late final Output<String> policyTemplate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the name of the resource type that this customer managed permission applies to. The format is `<service-code>:<resource-type>` and is not case sensitive.
  late final Output<String> resourceType;

  /// The current status of the permission.
  late final Output<String> status;

  /// A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<PermissionTimeouts?> timeouts;

  /// The version of the permission associated with this resource share.
  late final Output<String> version;

  Permission3(
    String name, {
    PermissionArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ram/permission:Permission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultVersion = registerOutput<bool>('defaultVersion');
    this.name = registerOutput<String>('name');
    this.policyTemplate = registerOutput<String>('policyTemplate');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<PermissionTimeouts?>('timeouts');
    this.version = registerOutput<String>('version');
  }
}
