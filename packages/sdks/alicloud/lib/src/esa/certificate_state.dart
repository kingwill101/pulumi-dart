// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// Cloud certificate ID.
  final pulumi.Input<String>? casId;
  /// The certificate Id.
  final pulumi.Input<String>? certId;
  /// The certificate name.
  final pulumi.Input<String>? certName;
  /// Certificate content.
  final pulumi.Input<String>? certificate;
  /// Creation time.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<String>? createdType;
  /// A list of domain names. Multiple domain names are separated by commas.
  final pulumi.Input<String>? domains;
  final pulumi.Input<String>? privateKey;
  /// Region. This parameter is required if the type is CAS.
  /// For accounts on the Chinese site, this parameter value is: cn-hangzhou
  /// For accounts on the international site, this parameter value is: ap-southeast-1
  final pulumi.Input<String>? region;
  /// The site ID, which can be obtained by calling the ListSites interface.
  final pulumi.Input<String>? siteId;
  /// Certificate status.(within 30 days).- issued.- applying.- application failed.- canceled.
  final pulumi.Input<String>? status;
  /// Certificate type. Possible values: lets_encrypt: Let's Encrypt certificate;
  final pulumi.Input<String>? type;

  /// Creates a new [CertificateState].
  /// [casId] Cloud certificate ID.
  /// [certId] The certificate Id.
  /// [certName] The certificate name.
  /// [certificate] Certificate content.
  /// [createTime] Creation time.
  /// [createdType] Optional.
  /// [domains] A list of domain names. Multiple domain names are separated by commas.
  /// [privateKey] Optional.
  /// [region] Region. This parameter is required if the type is CAS.
  /// [siteId] The site ID, which can be obtained by calling the ListSites interface.
  /// [status] Certificate status.(within 30 days).- issued.- applying.- application failed.- canceled.
  /// [type] Certificate type. Possible values: lets_encrypt: Let's Encrypt certificate;
  CertificateState({
    pulumi.Output<String>? casId,
    pulumi.Output<String>? certId,
    pulumi.Output<String>? certName,
    pulumi.Output<String>? certificate,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? createdType,
    pulumi.Output<String>? domains,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? region,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
  }) :
      casId = pulumi.Input.asOptionalInput<String>(casId),
      certId = pulumi.Input.asOptionalInput<String>(certId),
      certName = pulumi.Input.asOptionalInput<String>(certName),
      certificate = pulumi.Input.asOptionalInput<String>(certificate),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      createdType = pulumi.Input.asOptionalInput<String>(createdType),
      domains = pulumi.Input.asOptionalInput<String>(domains),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'casId': ?casId,
      'certId': ?certId,
      'certName': ?certName,
      'certificate': ?certificate,
      'createTime': ?createTime,
      'createdType': ?createdType,
      'domains': ?domains,
      'privateKey': ?privateKey,
      'region': ?region,
      'siteId': ?siteId,
      'status': ?status,
      'type': ?type,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      casId: map['casId'] == null ? null : pulumi.Output.create<String>(map['casId'] as String),
      certId: map['certId'] == null ? null : pulumi.Output.create<String>(map['certId'] as String),
      certName: map['certName'] == null ? null : pulumi.Output.create<String>(map['certName'] as String),
      certificate: map['certificate'] == null ? null : pulumi.Output.create<String>(map['certificate'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      createdType: map['createdType'] == null ? null : pulumi.Output.create<String>(map['createdType'] as String),
      domains: map['domains'] == null ? null : pulumi.Output.create<String>(map['domains'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

