// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_auto_provisioning_auto_provisioning_args_doc}
/// The set of arguments for AutoProvisioning.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_auto_provisioning_auto_provisioning_args_doc}
class AutoProvisioningArgs {
  /// Should the security agent be automatically provisioned on Virtual Machines in this subscription? Possible values are `On` (to install the security agent automatically, if it's missing) or `Off` (to not install the security agent automatically).
  final pulumi.Input<String> autoProvision;

  /// Creates a new [AutoProvisioningArgs].
  /// [autoProvision] Should the security agent be automatically provisioned on Virtual Machines in this subscription? Possible values are `On` (to install the security agent automatically, if it's missing) or `Off` (to not install the security agent automatically).
  AutoProvisioningArgs({
    required String autoProvision,
  }) :
      autoProvision = pulumi.Input.asInput<String>(autoProvision);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProvision': autoProvision,
    };
  }

  factory AutoProvisioningArgs.fromMap(Map<String, dynamic> map) {
    return AutoProvisioningArgs(
      autoProvision: map['autoProvision'] as String,
    );
  }
}

