// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_providers_application_provider.dart';

/// Result data returned by getApplicationProviders.
class GetApplicationProvidersResult {
  /// A list of application providers available in the current region. See `applicationProviders` below.
  final List<GetApplicationProvidersApplicationProvider>? applicationProviders;
  /// AWS region.
  final String? id;
  final String? region;

  /// Creates a new [GetApplicationProvidersResult].
  /// [applicationProviders] A list of application providers available in the current region. See `applicationProviders` below.
  /// [id] AWS region.
  /// [region] Optional.
  const GetApplicationProvidersResult({
    this.applicationProviders,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationProviders': ?(() { final guardedValue = applicationProviders; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationProvidersApplicationProvider, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetApplicationProvidersResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationProvidersResult(
      applicationProviders: (() { final guardedValue = map['applicationProviders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationProvidersApplicationProvider>(guardedValue, (value) => GetApplicationProvidersApplicationProvider.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
