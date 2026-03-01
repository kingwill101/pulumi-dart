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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? authType,
    pulumi.Output<String>? certificateArn,
    pulumi.Output<String>? customDomainName,
    pulumi.Output<List<ServiceDnsEntry>>? dnsEntries,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authType = pulumi.Input.asOptionalInput<String>(authType),
      certificateArn = pulumi.Input.asOptionalInput<String>(certificateArn),
      customDomainName = pulumi.Input.asOptionalInput<String>(customDomainName),
      dnsEntries = pulumi.Input.asOptionalInput<List<ServiceDnsEntry>>(dnsEntries),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authType: map['authType'] == null ? null : pulumi.Output.create<String>(map['authType'] as String),
      certificateArn: map['certificateArn'] == null ? null : pulumi.Output.create<String>(map['certificateArn'] as String),
      customDomainName: map['customDomainName'] == null ? null : pulumi.Output.create<String>(map['customDomainName'] as String),
      dnsEntries: map['dnsEntries'] == null ? null : pulumi.Output.create<List<ServiceDnsEntry>>(pulumi.Input.decodeList<ServiceDnsEntry>(map['dnsEntries'], (value) => ServiceDnsEntry.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

