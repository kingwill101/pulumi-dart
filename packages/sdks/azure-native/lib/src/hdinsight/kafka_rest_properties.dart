// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_group_info.dart';

/// The kafka rest proxy configuration which contains AAD security group information.
class KafkaRestProperties {
  /// The information of AAD security group.
  final pulumi.Input<ClientGroupInfo>? clientGroupInfo;
  /// The configurations that need to be overriden.
  final pulumi.Input<Map<String, String>>? configurationOverride;

  /// Creates a new [KafkaRestProperties].
  /// [clientGroupInfo] The information of AAD security group.
  /// [configurationOverride] The configurations that need to be overriden.
  const KafkaRestProperties({
    this.clientGroupInfo,
    this.configurationOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientGroupInfo': ?pulumi.Input.mapOptionalInputValue<ClientGroupInfo, Map<String, dynamic>>(clientGroupInfo, (value) => value.toMap()),
      'configurationOverride': ?configurationOverride,
    };
  }

  factory KafkaRestProperties.fromMap(Map<String, dynamic> map) {
    return KafkaRestProperties(
      clientGroupInfo: (() { final guardedValue = map['clientGroupInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientGroupInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurationOverride: (() { final guardedValue = map['configurationOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
