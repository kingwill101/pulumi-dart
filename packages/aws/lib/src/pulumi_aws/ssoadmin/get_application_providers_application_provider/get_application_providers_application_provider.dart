// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_application_providers_application_provider_display_data/get_application_providers_application_provider_display_data.dart';

class GetApplicationProvidersApplicationProvider {
  /// ARN of the application provider.
  final String applicationProviderArn;

  /// An object describing how IAM Identity Center represents the application provider in the portal. See <span pulumi-lang-nodejs="`displayData`" pulumi-lang-dotnet="`DisplayData`" pulumi-lang-go="`displayData`" pulumi-lang-python="`display_data`" pulumi-lang-yaml="`displayData`" pulumi-lang-java="`displayData`">`display_data`</span> below.
  final List<GetApplicationProvidersApplicationProviderDisplayData>
      displayDatas;

  /// Protocol that the application provider uses to perform federation. Valid values are `SAML` and `OAUTH`.
  final String federationProtocol;

  GetApplicationProvidersApplicationProvider({
    required this.applicationProviderArn,
    required this.displayDatas,
    required this.federationProtocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationProviderArn'] = applicationProviderArn;
    map['displayDatas'] = Input.encodeList<
        GetApplicationProvidersApplicationProviderDisplayData,
        Map<String, dynamic>>(displayDatas, (value) => value.toMap());
    map['federationProtocol'] = federationProtocol;
    return map;
  }

  factory GetApplicationProvidersApplicationProvider.fromMap(
      Map<String, dynamic> map) {
    return GetApplicationProvidersApplicationProvider(
      applicationProviderArn: map['applicationProviderArn'] as String,
      displayDatas: Input.decodeList<
              GetApplicationProvidersApplicationProviderDisplayData>(
          map['displayDatas'],
          (value) =>
              GetApplicationProvidersApplicationProviderDisplayData.fromMap(
                  (value as Map).cast<String, dynamic>())),
      federationProtocol: map['federationProtocol'] as String,
    );
  }
}
