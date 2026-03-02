// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sag_qos_qos_args_doc}
/// The set of arguments for Qos.
/// {@endtemplate}
/// {@macro pulumi_sag_qos_qos_args_doc}
class QosArgs {
  /// The name of the QoS policy to be created. The name can contain 2 to 128 characters including a-z, A-Z, 0-9, periods, underlines, and hyphens. The name must start with an English letter, but cannot start with http:// or https://.
  final pulumi.Input<String>? name;

  /// Creates a new [QosArgs].
  /// [name] The name of the QoS policy to be created. The name can contain 2 to 128 characters including a-z, A-Z, 0-9, periods, underlines, and hyphens. The name must start with an English letter, but cannot start with http:// or https://.
  QosArgs({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory QosArgs.fromMap(Map<String, dynamic> map) {
    return QosArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

