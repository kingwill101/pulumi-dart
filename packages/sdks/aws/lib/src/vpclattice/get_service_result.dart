// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_dns_entry.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// ARN of the service.
  final String? arn;
  /// Type of IAM policy. Either `NONE` or `AWS_IAM`.
  final String? authType;
  /// ARN of the certificate.
  final String? certificateArn;
  /// Custom domain name of the service.
  final String? customDomainName;
  /// List of objects with DNS names.
  final List<GetServiceDnsEntry>? dnsEntries;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Amount of time, in seconds, that a connection can remain idle (no data sent) before VPC Lattice closes it.
  final int? idleTimeoutSeconds;
  final String? name;
  final String? region;
  final String? serviceIdentifier;
  /// Status of the service.
  final String? status;
  /// List of tags associated with the service.
  final Map<String, String>? tags;

  /// Creates a new [GetServiceResult].
  /// [arn] ARN of the service.
  /// [authType] Type of IAM policy. Either `NONE` or `AWS_IAM`.
  /// [certificateArn] ARN of the certificate.
  /// [customDomainName] Custom domain name of the service.
  /// [dnsEntries] List of objects with DNS names.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeoutSeconds] Amount of time, in seconds, that a connection can remain idle (no data sent) before VPC Lattice closes it.
  /// [name] Optional.
  /// [region] Optional.
  /// [serviceIdentifier] Optional.
  /// [status] Status of the service.
  /// [tags] List of tags associated with the service.
  const GetServiceResult({
    this.arn,
    this.authType,
    this.certificateArn,
    this.customDomainName,
    this.dnsEntries,
    this.id,
    this.idleTimeoutSeconds,
    this.name,
    this.region,
    this.serviceIdentifier,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authType': ?authType,
      'certificateArn': ?certificateArn,
      'customDomainName': ?customDomainName,
      'dnsEntries': ?(() { final guardedValue = dnsEntries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServiceDnsEntry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'idleTimeoutSeconds': ?idleTimeoutSeconds,
      'name': ?name,
      'region': ?region,
      'serviceIdentifier': ?serviceIdentifier,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customDomainName: (() { final guardedValue = map['customDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsEntries: (() { final guardedValue = map['dnsEntries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServiceDnsEntry>(guardedValue, (value) => GetServiceDnsEntry.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idleTimeoutSeconds: (() { final guardedValue = map['idleTimeoutSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceIdentifier: (() { final guardedValue = map['serviceIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
