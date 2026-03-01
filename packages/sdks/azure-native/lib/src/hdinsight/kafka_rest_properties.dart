// ignore_for_file: unused_element, unnecessary_cast

import 'client_group_info.dart';

/// The kafka rest proxy configuration which contains AAD security group information.
class KafkaRestProperties {
  /// The information of AAD security group.
  final ClientGroupInfo? clientGroupInfo;
  /// The configurations that need to be overriden.
  final Map<String, String>? configurationOverride;

  /// Creates a new [KafkaRestProperties].
  /// [clientGroupInfo] The information of AAD security group.
  /// [configurationOverride] The configurations that need to be overriden.
  KafkaRestProperties({
    this.clientGroupInfo,
    this.configurationOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientGroupInfo': ?clientGroupInfo == null ? null : clientGroupInfo!.toMap(),
      'configurationOverride': ?configurationOverride,
    };
  }

  factory KafkaRestProperties.fromMap(Map<String, dynamic> map) {
    return KafkaRestProperties(
      clientGroupInfo: map['clientGroupInfo'] == null ? null : ClientGroupInfo.fromMap((map['clientGroupInfo'] as Map).cast<String, dynamic>()),
      configurationOverride: map['configurationOverride'] == null ? null : (map['configurationOverride'] as Map).cast<String, String>(),
    );
  }
}

