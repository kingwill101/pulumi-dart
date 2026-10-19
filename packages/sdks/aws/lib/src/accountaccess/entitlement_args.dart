// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_entitlement.dart';

/// {@template pulumi_accountaccess_entitlement_entitlement_args_doc}
/// The set of arguments for Entitlement.
/// {@endtemplate}
/// {@macro pulumi_accountaccess_entitlement_entitlement_args_doc}
class EntitlementArgs {
  /// ARN of the parent Account Access Application. Forces replacement when changed.
  final pulumi.Input<String> applicationArn;
  /// Entitlement configuration. See `entitlement` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<EntitlementEntitlement> entitlement;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [EntitlementArgs].
  /// [applicationArn] ARN of the parent Account Access Application. Forces replacement when changed.
  /// [entitlement] Entitlement configuration. See `entitlement` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const EntitlementArgs({
    required this.applicationArn,
    required this.entitlement,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
      'entitlement': pulumi.Input.mapInputValue<EntitlementEntitlement, Map<String, dynamic>>(entitlement, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory EntitlementArgs.fromMap(Map<String, dynamic> map) {
    return EntitlementArgs(
      applicationArn: pulumi.Input.fromValue(map['applicationArn'] as String),
      entitlement: pulumi.Input.fromValue(EntitlementEntitlement.fromMap((map['entitlement']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
