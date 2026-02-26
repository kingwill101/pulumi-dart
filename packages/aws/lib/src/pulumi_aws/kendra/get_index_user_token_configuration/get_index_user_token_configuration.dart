// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_index_user_token_configuration_json_token_type_configuration/get_index_user_token_configuration_json_token_type_configuration.dart';
import '../get_index_user_token_configuration_jwt_token_type_configuration/get_index_user_token_configuration_jwt_token_type_configuration.dart';

class GetIndexUserTokenConfiguration {
  /// A block that specifies the information about the JSON token type configuration.
  final List<GetIndexUserTokenConfigurationJsonTokenTypeConfiguration>
      jsonTokenTypeConfigurations;

  /// A block that specifies the information about the JWT token type configuration.
  final List<GetIndexUserTokenConfigurationJwtTokenTypeConfiguration>
      jwtTokenTypeConfigurations;

  GetIndexUserTokenConfiguration({
    required this.jsonTokenTypeConfigurations,
    required this.jwtTokenTypeConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jsonTokenTypeConfigurations'] = Input.encodeList<
            GetIndexUserTokenConfigurationJsonTokenTypeConfiguration,
            Map<String, dynamic>>(
        jsonTokenTypeConfigurations, (value) => value.toMap());
    map['jwtTokenTypeConfigurations'] = Input.encodeList<
            GetIndexUserTokenConfigurationJwtTokenTypeConfiguration,
            Map<String, dynamic>>(
        jwtTokenTypeConfigurations, (value) => value.toMap());
    return map;
  }

  factory GetIndexUserTokenConfiguration.fromMap(Map<String, dynamic> map) {
    return GetIndexUserTokenConfiguration(
      jsonTokenTypeConfigurations: Input.decodeList<
              GetIndexUserTokenConfigurationJsonTokenTypeConfiguration>(
          map['jsonTokenTypeConfigurations'],
          (value) =>
              GetIndexUserTokenConfigurationJsonTokenTypeConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      jwtTokenTypeConfigurations: Input.decodeList<
              GetIndexUserTokenConfigurationJwtTokenTypeConfiguration>(
          map['jwtTokenTypeConfigurations'],
          (value) =>
              GetIndexUserTokenConfigurationJwtTokenTypeConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
