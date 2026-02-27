// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_service_dns_entry/get_service_dns_entry.dart';

/// Result data returned by getService.
class GetServiceVpclatticeResult {
  /// ARN of the service.
  final String arn;

  /// Type of IAM policy. Either `NONE` or `AWS_IAM`.
  final String authType;

  /// Amazon Resource Name (ARN) of the certificate.
  final String certificateArn;

  /// Custom domain name of the service.
  final String customDomainName;

  /// List of objects with DNS names.
  final List<GetServiceDnsEntry> dnsEntries;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  final String serviceIdentifier;

  /// Status of the service.
  final String status;

  /// List of tags associated with the service.
  final Map<String, String> tags;

  GetServiceVpclatticeResult({
    required this.arn,
    required this.authType,
    required this.certificateArn,
    required this.customDomainName,
    required this.dnsEntries,
    required this.id,
    required this.name,
    required this.region,
    required this.serviceIdentifier,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['authType'] = authType;
    map['certificateArn'] = certificateArn;
    map['customDomainName'] = customDomainName;
    map['dnsEntries'] =
        pulumi.Input.encodeList<GetServiceDnsEntry, Map<String, dynamic>>(
            dnsEntries, (value) => value.toMap());
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['serviceIdentifier'] = serviceIdentifier;
    map['status'] = status;
    map['tags'] = tags;
    return map;
  }

  factory GetServiceVpclatticeResult.fromMap(Map<String, dynamic> map) {
    return GetServiceVpclatticeResult(
      arn: map['arn'] as String,
      authType: map['authType'] as String,
      certificateArn: map['certificateArn'] as String,
      customDomainName: map['customDomainName'] as String,
      dnsEntries: pulumi.Input.decodeList<GetServiceDnsEntry>(
          map['dnsEntries'],
          (value) => GetServiceDnsEntry.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      serviceIdentifier: map['serviceIdentifier'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
