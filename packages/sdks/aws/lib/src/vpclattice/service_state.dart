// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_dns_entry.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// ARN of the service.
  final pulumi.Input<String>? arn;
  /// Type of IAM policy. Either `NONE` or `AWS_IAM`.
  final pulumi.Input<String>? authType;
  /// Amazon Resource Name (ARN) of the certificate.
  final pulumi.Input<String>? certificateArn;
  /// Custom domain name of the service.
  final pulumi.Input<String>? customDomainName;
  /// DNS name of the service.
  final pulumi.Input<List<ServiceDnsEntry>>? dnsEntries;
  /// Name of the service. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.Must be between 3 and 40 characters in length.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the service.
  final pulumi.Input<String>? status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ServiceState].
  /// [arn] ARN of the service.
  /// [authType] Type of IAM policy. Either `NONE` or `AWS_IAM`.
  /// [certificateArn] Amazon Resource Name (ARN) of the certificate.
  /// [customDomainName] Custom domain name of the service.
  /// [dnsEntries] DNS name of the service.
  /// [name] Name of the service. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.Must be between 3 and 40 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the service.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ServiceState({
    this.arn,
    this.authType,
    this.certificateArn,
    this.customDomainName,
    this.dnsEntries,
    this.name,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authType': ?authType,
      'certificateArn': ?certificateArn,
      'customDomainName': ?customDomainName,
      'dnsEntries': ?pulumi.Input.mapOptionalInputValue<List<ServiceDnsEntry>, List<Map<String, dynamic>>>(dnsEntries, (value) => pulumi.Input.encodeList<ServiceDnsEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      authType: map['authType'] == null ? null : ((map['authType'] as String).input()).input(),
      certificateArn: map['certificateArn'] == null ? null : ((map['certificateArn'] as String).input()).input(),
      customDomainName: map['customDomainName'] == null ? null : ((map['customDomainName'] as String).input()).input(),
      dnsEntries: map['dnsEntries'] == null ? null : ((pulumi.Input.decodeList<ServiceDnsEntry>(map['dnsEntries']!, (value) => ServiceDnsEntry.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

