// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_providers_application_provider_display_data.dart';

class GetApplicationProvidersApplicationProvider {
  /// ARN of the application provider.
  final String applicationProviderArn;
  /// An object describing how IAM Identity Center represents the application provider in the portal. See `display_data` below.
  final List<GetApplicationProvidersApplicationProviderDisplayData> displayDatas;
  /// Protocol that the application provider uses to perform federation. Valid values are `SAML` and `OAUTH`.
  final String federationProtocol;

  /// Creates a new [GetApplicationProvidersApplicationProvider].
  /// [applicationProviderArn] ARN of the application provider.
  /// [displayDatas] An object describing how IAM Identity Center represents the application provider in the portal. See `display_data` below.
  /// [federationProtocol] Protocol that the application provider uses to perform federation. Valid values are `SAML` and `OAUTH`.
  GetApplicationProvidersApplicationProvider({
    required this.applicationProviderArn,
    required this.displayDatas,
    required this.federationProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationProviderArn': applicationProviderArn,
      'displayDatas': pulumi.Input.encodeList<GetApplicationProvidersApplicationProviderDisplayData, Map<String, dynamic>>(displayDatas, (value) => value.toMap()),
      'federationProtocol': federationProtocol,
    };
  }

  factory GetApplicationProvidersApplicationProvider.fromMap(Map<String, dynamic> map) {
    return GetApplicationProvidersApplicationProvider(
      applicationProviderArn: map['applicationProviderArn'] as String,
      displayDatas: pulumi.Input.decodeList<GetApplicationProvidersApplicationProviderDisplayData>(map['displayDatas'], (value) => GetApplicationProvidersApplicationProviderDisplayData.fromMap((value as Map).cast<String, dynamic>())),
      federationProtocol: map['federationProtocol'] as String,
    );
  }
}

