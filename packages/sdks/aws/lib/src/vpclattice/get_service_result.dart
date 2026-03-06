// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_dns_entry.dart';

/// Result data returned by getService.
class GetServiceResult {
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

  /// Creates a new [GetServiceResult].
  /// [arn] ARN of the service.
  /// [authType] Type of IAM policy. Either `NONE` or `AWS_IAM`.
  /// [certificateArn] Amazon Resource Name (ARN) of the certificate.
  /// [customDomainName] Custom domain name of the service.
  /// [dnsEntries] List of objects with DNS names.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [serviceIdentifier] Required.
  /// [status] Status of the service.
  /// [tags] List of tags associated with the service.
  const GetServiceResult({
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
    return <String, dynamic>{
      'arn': arn,
      'authType': authType,
      'certificateArn': certificateArn,
      'customDomainName': customDomainName,
      'dnsEntries': pulumi.Input.encodeList<GetServiceDnsEntry, Map<String, dynamic>>(dnsEntries, (value) => value.toMap()),
      'id': id,
      'name': name,
      'region': region,
      'serviceIdentifier': serviceIdentifier,
      'status': status,
      'tags': tags,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      arn: map['arn'] as String,
      authType: map['authType'] as String,
      certificateArn: map['certificateArn'] as String,
      customDomainName: map['customDomainName'] as String,
      dnsEntries: pulumi.Input.decodeList<GetServiceDnsEntry>(map['dnsEntries']!, (value) => GetServiceDnsEntry.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      serviceIdentifier: map['serviceIdentifier'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

