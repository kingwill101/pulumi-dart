// ignore_for_file: unused_element, unnecessary_cast

import 'networking_config_connection_type_composer_v1beta1.dart';

/// Configuration options for networking connections in the Composer 2 environment.
class NetworkingConfigComposerV1beta1 {
  /// Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  final NetworkingConfigConnectionTypeComposerV1beta1? connectionType;

  /// Creates a new [NetworkingConfigComposerV1beta1].
  /// [connectionType] Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
  NetworkingConfigComposerV1beta1({this.connectionType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?connectionType == null ? null : connectionType!.value,
    };
  }

  factory NetworkingConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkingConfigComposerV1beta1(
      connectionType: map['connectionType'] == null
          ? null
          : NetworkingConfigConnectionTypeComposerV1beta1.fromValue(
              map['connectionType'] as String,
            ),
    );
  }
}
