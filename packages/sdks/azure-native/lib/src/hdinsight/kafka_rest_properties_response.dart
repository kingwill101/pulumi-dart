// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_group_info_response.dart';

/// The kafka rest proxy configuration which contains AAD security group information.
class KafkaRestPropertiesResponse {
  /// The information of AAD security group.
  final pulumi.Input<ClientGroupInfoResponse>? clientGroupInfo;
  /// The configurations that need to be overriden.
  final pulumi.Input<Map<String, String>>? configurationOverride;

  /// Creates a new [KafkaRestPropertiesResponse].
  /// [clientGroupInfo] The information of AAD security group.
  /// [configurationOverride] The configurations that need to be overriden.
  KafkaRestPropertiesResponse({
    this.clientGroupInfo,
    this.configurationOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientGroupInfo': ?pulumi.Input.mapOptionalInputValue<ClientGroupInfoResponse, Map<String, dynamic>>(clientGroupInfo, (value) => value.toMap()),
      'configurationOverride': ?configurationOverride,
    };
  }

  factory KafkaRestPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KafkaRestPropertiesResponse(
      clientGroupInfo: (() { final guardedValue = map['clientGroupInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientGroupInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurationOverride: (() { final guardedValue = map['configurationOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

