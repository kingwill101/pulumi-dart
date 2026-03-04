// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_user_token_configuration_json_token_type_configuration.dart';
import 'get_index_user_token_configuration_jwt_token_type_configuration.dart';

class GetIndexUserTokenConfiguration {
  /// A block that specifies the information about the JSON token type configuration.
  final pulumi.Input<
    List<GetIndexUserTokenConfigurationJsonTokenTypeConfiguration>
  >
  jsonTokenTypeConfigurations;

  /// A block that specifies the information about the JWT token type configuration.
  final pulumi.Input<
    List<GetIndexUserTokenConfigurationJwtTokenTypeConfiguration>
  >
  jwtTokenTypeConfigurations;

  /// Creates a new [GetIndexUserTokenConfiguration].
  /// [jsonTokenTypeConfigurations] A block that specifies the information about the JSON token type configuration.
  /// [jwtTokenTypeConfigurations] A block that specifies the information about the JWT token type configuration.
  GetIndexUserTokenConfiguration({
    required this.jsonTokenTypeConfigurations,
    required this.jwtTokenTypeConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonTokenTypeConfigurations':
          pulumi.Input.mapInputValue<
            List<GetIndexUserTokenConfigurationJsonTokenTypeConfiguration>,
            List<Map<String, dynamic>>
          >(
            jsonTokenTypeConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetIndexUserTokenConfigurationJsonTokenTypeConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'jwtTokenTypeConfigurations':
          pulumi.Input.mapInputValue<
            List<GetIndexUserTokenConfigurationJwtTokenTypeConfiguration>,
            List<Map<String, dynamic>>
          >(
            jwtTokenTypeConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetIndexUserTokenConfigurationJwtTokenTypeConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetIndexUserTokenConfiguration.fromMap(Map<String, dynamic> map) {
    return GetIndexUserTokenConfiguration(
      jsonTokenTypeConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetIndexUserTokenConfigurationJsonTokenTypeConfiguration
        >(
          map['jsonTokenTypeConfigurations']!,
          (value) =>
              GetIndexUserTokenConfigurationJsonTokenTypeConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      jwtTokenTypeConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetIndexUserTokenConfigurationJwtTokenTypeConfiguration
        >(
          map['jwtTokenTypeConfigurations']!,
          (value) =>
              GetIndexUserTokenConfigurationJwtTokenTypeConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
