// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_serverless_security_config_saml_option/get_serverless_security_config_saml_option.dart';

/// Arguments for getServerlessSecurityConfig.
class GetServerlessSecurityConfigArgs {
  /// The unique identifier of the security configuration.
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// SAML options for the security configuration.
  final pulumi.Input<List<GetServerlessSecurityConfigSamlOption>>? samlOptions;

  GetServerlessSecurityConfigArgs({
    required this.id,
    this.region,
    this.samlOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final samlOptionsValue = samlOptions;
    if (samlOptionsValue != null) {
      map['samlOptions'] = pulumi.Input.mapOptionalInputValue<
              List<GetServerlessSecurityConfigSamlOption>,
              List<Map<String, dynamic>>>(
          samlOptionsValue,
          (value) => pulumi.Input.encodeList<
              GetServerlessSecurityConfigSamlOption,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory GetServerlessSecurityConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityConfigArgs(
      id: pulumi.Input.asInput<String>(map['id']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      samlOptions: pulumi.Input.asOptionalInput<
          List<GetServerlessSecurityConfigSamlOption>>(map['samlOptions']),
    );
  }
}
