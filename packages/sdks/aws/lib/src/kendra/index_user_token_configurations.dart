// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_user_token_configurations_json_token_type_configuration.dart';
import 'index_user_token_configurations_jwt_token_type_configuration.dart';

class IndexUserTokenConfigurations {
  /// A block that specifies the information about the JSON token type configuration. Detailed below.
  final pulumi.Input<IndexUserTokenConfigurationsJsonTokenTypeConfiguration>? jsonTokenTypeConfiguration;
  /// A block that specifies the information about the JWT token type configuration. Detailed below.
  final pulumi.Input<IndexUserTokenConfigurationsJwtTokenTypeConfiguration>? jwtTokenTypeConfiguration;

  /// Creates a new [IndexUserTokenConfigurations].
  /// [jsonTokenTypeConfiguration] A block that specifies the information about the JSON token type configuration. Detailed below.
  /// [jwtTokenTypeConfiguration] A block that specifies the information about the JWT token type configuration. Detailed below.
  const IndexUserTokenConfigurations({
    this.jsonTokenTypeConfiguration,
    this.jwtTokenTypeConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonTokenTypeConfiguration': ?pulumi.Input.mapOptionalInputValue<IndexUserTokenConfigurationsJsonTokenTypeConfiguration, Map<String, dynamic>>(jsonTokenTypeConfiguration, (value) => value.toMap()),
      'jwtTokenTypeConfiguration': ?pulumi.Input.mapOptionalInputValue<IndexUserTokenConfigurationsJwtTokenTypeConfiguration, Map<String, dynamic>>(jwtTokenTypeConfiguration, (value) => value.toMap()),
    };
  }

  factory IndexUserTokenConfigurations.fromMap(Map<String, dynamic> map) {
    return IndexUserTokenConfigurations(
      jsonTokenTypeConfiguration: (() { final guardedValue = map['jsonTokenTypeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexUserTokenConfigurationsJsonTokenTypeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jwtTokenTypeConfiguration: (() { final guardedValue = map['jwtTokenTypeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexUserTokenConfigurationsJwtTokenTypeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
