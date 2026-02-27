import 'package:pulumi/pulumi.dart';
import '../instance_access_control_attributes_attribute/instance_access_control_attributes_attribute.dart';
import 'instance_access_control_attributes_args.dart';

/// Provides a Single Sign-On (SSO) ABAC Resource: https://docs.aws.amazon.com/singlesignon/latest/userguide/abac.html
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Account Assignments using the `instance_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/instanceAccessControlAttributes:InstanceAccessControlAttributes example arn:aws:sso:::instance/ssoins-0123456789abcdef
/// ```
class InstanceAccessControlAttributes extends CustomResource {
  /// See AccessControlAttribute for more details.
  late final Output<List<InstanceAccessControlAttributesAttribute>> attributes;

  /// The Amazon Resource Name (ARN) of the SSO Instance.
  late final Output<String> instanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> status;
  late final Output<String> statusReason;

  InstanceAccessControlAttributes(
    String name, {
    InstanceAccessControlAttributesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/instanceAccessControlAttributes:InstanceAccessControlAttributes',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributes =
        registerOutput<List<InstanceAccessControlAttributesAttribute>>(
            'attributes');
    this.instanceArn = registerOutput<String>('instanceArn');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
  }
}
