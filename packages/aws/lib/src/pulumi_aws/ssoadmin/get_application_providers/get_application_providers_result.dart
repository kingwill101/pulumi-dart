// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_application_providers_application_provider/get_application_providers_application_provider.dart';

/// Result data returned by getApplicationProviders.
class GetApplicationProvidersResult {
  /// A list of application providers available in the current region. See <span pulumi-lang-nodejs="`applicationProviders`" pulumi-lang-dotnet="`ApplicationProviders`" pulumi-lang-go="`applicationProviders`" pulumi-lang-python="`application_providers`" pulumi-lang-yaml="`applicationProviders`" pulumi-lang-java="`applicationProviders`">`application_providers`</span> below.
  final List<GetApplicationProvidersApplicationProvider> applicationProviders;

  /// AWS region.
  final String id;
  final String region;

  GetApplicationProvidersResult({
    required this.applicationProviders,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationProviders'] = Input.encodeList<
        GetApplicationProvidersApplicationProvider,
        Map<String, dynamic>>(applicationProviders, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetApplicationProvidersResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationProvidersResult(
      applicationProviders:
          Input.decodeList<GetApplicationProvidersApplicationProvider>(
              map['applicationProviders'],
              (value) => GetApplicationProvidersApplicationProvider.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
