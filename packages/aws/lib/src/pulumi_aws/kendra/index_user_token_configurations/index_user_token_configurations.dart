// ignore_for_file: unused_element, unnecessary_cast

import '../index_user_token_configurations_json_token_type_configuration/index_user_token_configurations_json_token_type_configuration.dart';
import '../index_user_token_configurations_jwt_token_type_configuration/index_user_token_configurations_jwt_token_type_configuration.dart';

class IndexUserTokenConfigurations {
  /// A block that specifies the information about the JSON token type configuration. Detailed below.
  final IndexUserTokenConfigurationsJsonTokenTypeConfiguration?
      jsonTokenTypeConfiguration;

  /// A block that specifies the information about the JWT token type configuration. Detailed below.
  final IndexUserTokenConfigurationsJwtTokenTypeConfiguration?
      jwtTokenTypeConfiguration;

  IndexUserTokenConfigurations({
    this.jsonTokenTypeConfiguration,
    this.jwtTokenTypeConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jsonTokenTypeConfigurationValue = jsonTokenTypeConfiguration;
    if (jsonTokenTypeConfigurationValue != null) {
      map['jsonTokenTypeConfiguration'] =
          jsonTokenTypeConfigurationValue.toMap();
    }
    final jwtTokenTypeConfigurationValue = jwtTokenTypeConfiguration;
    if (jwtTokenTypeConfigurationValue != null) {
      map['jwtTokenTypeConfiguration'] = jwtTokenTypeConfigurationValue.toMap();
    }
    return map;
  }

  factory IndexUserTokenConfigurations.fromMap(Map<String, dynamic> map) {
    return IndexUserTokenConfigurations(
      jsonTokenTypeConfiguration: map['jsonTokenTypeConfiguration'] == null
          ? null
          : IndexUserTokenConfigurationsJsonTokenTypeConfiguration.fromMap(
              (map['jsonTokenTypeConfiguration'] as Map)
                  .cast<String, dynamic>()),
      jwtTokenTypeConfiguration: map['jwtTokenTypeConfiguration'] == null
          ? null
          : IndexUserTokenConfigurationsJwtTokenTypeConfiguration.fromMap(
              (map['jwtTokenTypeConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
