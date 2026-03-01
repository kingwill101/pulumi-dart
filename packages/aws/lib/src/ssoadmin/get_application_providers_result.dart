// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_providers_application_provider.dart';

/// Result data returned by getApplicationProviders.
class GetApplicationProvidersResult {
  /// A list of application providers available in the current region. See `application_providers` below.
  final List<GetApplicationProvidersApplicationProvider> applicationProviders;
  /// AWS region.
  final String id;
  final String region;

  /// Creates a new [GetApplicationProvidersResult].
  /// [applicationProviders] A list of application providers available in the current region. See `application_providers` below.
  /// [id] AWS region.
  /// [region] Required.
  GetApplicationProvidersResult({
    required this.applicationProviders,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationProviders': pulumi.Input.encodeList<GetApplicationProvidersApplicationProvider, Map<String, dynamic>>(applicationProviders, (value) => value.toMap()),
      'id': id,
      'region': region,
    };
  }

  factory GetApplicationProvidersResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationProvidersResult(
      applicationProviders: pulumi.Input.decodeList<GetApplicationProvidersApplicationProvider>(map['applicationProviders'], (value) => GetApplicationProvidersApplicationProvider.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

