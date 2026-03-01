// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_lvp_config_response.dart';

/// Specifies the configs for local persistent volumes under a shared file system.
class BareMetalLvpShareConfigResponse {
  /// Defines the machine path and storage class for the LVP Share.
  final BareMetalLvpConfigResponse lvpConfig;

  /// The number of subdirectories to create under path.
  final int sharedPathPvCount;

  /// Creates a new [BareMetalLvpShareConfigResponse].
  /// [lvpConfig] Defines the machine path and storage class for the LVP Share.
  /// [sharedPathPvCount] The number of subdirectories to create under path.
  BareMetalLvpShareConfigResponse({
    required this.lvpConfig,
    required this.sharedPathPvCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvpConfig': lvpConfig.toMap(),
      'sharedPathPvCount': sharedPathPvCount,
    };
  }

  factory BareMetalLvpShareConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalLvpShareConfigResponse(
      lvpConfig: BareMetalLvpConfigResponse.fromMap(
        (map['lvpConfig'] as Map).cast<String, dynamic>(),
      ),
      sharedPathPvCount: map['sharedPathPvCount'] as int,
    );
  }
}
