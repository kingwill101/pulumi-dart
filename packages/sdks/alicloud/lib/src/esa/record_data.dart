// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordData {
  /// The encryption algorithm used for the record, specified within the range from 0 to 255. This parameter is required when you add CERT or SSHFP records.
  final pulumi.Input<int>? algorithm;
  /// The public key of the certificate. This parameter is required when you add CERT, SMIMEA, or TLSA records.
  final pulumi.Input<String>? certificate;
  /// The public key fingerprint of the record. This parameter is required when you add a SSHFP record.
  final pulumi.Input<String>? fingerprint;
  /// The flag bit of the record. The Flag for a CAA record indicates its priority and how it is processed, specified within the range of 0 to 255. This parameter is required when you add a CAA record.
  final pulumi.Input<int>? flag;
  /// The public key identification for the record, specified within the range of 0 to 65,535. This parameter is required when you add a CAA record.
  final pulumi.Input<int>? keyTag;
  /// The algorithm policy used to match or validate the certificate, specified within the range 0 to 255. This parameter is required when you add SMIMEA or TLSA records.
  final pulumi.Input<int>? matchingType;
  /// The port of the record, specified within the range of 0 to 65,535. This parameter is required when you add an SRV record.
  final pulumi.Input<int>? port;
  /// The priority of the record, specified within the range of 0 to 65,535. A smaller value indicates a higher priority. This parameter is required when you add MX, SRV, and URI records.
  final pulumi.Input<int>? priority;
  /// The type of certificate or public key, specified within the range of 0 to 255. This parameter is required when you add SMIMEA or TLSA records.
  final pulumi.Input<int>? selector;
  /// The label of the record. The Tag of a CAA record indicate its specific type and usage. This parameter is required when you add a CAA record. Valid values:
  final pulumi.Input<String>? tag;
  /// The certificate type of the record (in CERT records), or the public key type (in SSHFP records). This parameter is required when you add CERT or SSHFP records.
  final pulumi.Input<int>? type;
  /// The usage identifier of the record, specified within the range of 0 to 255. This parameter is required when you add SMIMEA or TLSA records.
  final pulumi.Input<int>? usage;
  /// Record value or part of the record content. This parameter is required when you add A/AAAA, CNAME, NS, MX, TXT, CAA, SRV, and URI records. It has different meanings based on types of records:
  /// - `A/AAAA`: the IP address(es). Separate IP addresses with commas (,). You must have at least one IPv4 address.
  /// - `CNAME`: the target domain name.
  /// - `NS`: the name servers for the domain name.
  /// - `MX`: a valid domain name of the target mail server.
  /// - `TXT`: a valid text string.
  /// - `CAA`: a valid domain name of the certificate authority.
  /// - `SRV`: a valid domain name of the target host.
  /// - `URI`: a valid URI string.
  final pulumi.Input<String>? value;
  /// The weight of the record, specified within the range of 0 to 65,535. This parameter is required when you add SRV or URI records.
  final pulumi.Input<int>? weight;

  /// Creates a new [RecordData].
  /// [algorithm] The encryption algorithm used for the record, specified within the range from 0 to 255. This parameter is required when you add CERT or SSHFP records.
  /// [certificate] The public key of the certificate. This parameter is required when you add CERT, SMIMEA, or TLSA records.
  /// [fingerprint] The public key fingerprint of the record. This parameter is required when you add a SSHFP record.
  /// [flag] The flag bit of the record. The Flag for a CAA record indicates its priority and how it is processed, specified within the range of 0 to 255. This parameter is required when you add a CAA record.
  /// [keyTag] The public key identification for the record, specified within the range of 0 to 65,535. This parameter is required when you add a CAA record.
  /// [matchingType] The algorithm policy used to match or validate the certificate, specified within the range 0 to 255. This parameter is required when you add SMIMEA or TLSA records.
  /// [port] The port of the record, specified within the range of 0 to 65,535. This parameter is required when you add an SRV record.
  /// [priority] The priority of the record, specified within the range of 0 to 65,535. A smaller value indicates a higher priority. This parameter is required when you add MX, SRV, and URI records.
  /// [selector] The type of certificate or public key, specified within the range of 0 to 255. This parameter is required when you add SMIMEA or TLSA records.
  /// [tag] The label of the record. The Tag of a CAA record indicate its specific type and usage. This parameter is required when you add a CAA record. Valid values:
  /// [type] The certificate type of the record (in CERT records), or the public key type (in SSHFP records). This parameter is required when you add CERT or SSHFP records.
  /// [usage] The usage identifier of the record, specified within the range of 0 to 255. This parameter is required when you add SMIMEA or TLSA records.
  /// [value] Record value or part of the record content. This parameter is required when you add A/AAAA, CNAME, NS, MX, TXT, CAA, SRV, and URI records. It has different meanings based on types of records:
  /// [weight] The weight of the record, specified within the range of 0 to 65,535. This parameter is required when you add SRV or URI records.
  RecordData({
    this.algorithm,
    this.certificate,
    this.fingerprint,
    this.flag,
    this.keyTag,
    this.matchingType,
    this.port,
    this.priority,
    this.selector,
    this.tag,
    this.type,
    this.usage,
    this.value,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'certificate': ?certificate,
      'fingerprint': ?fingerprint,
      'flag': ?flag,
      'keyTag': ?keyTag,
      'matchingType': ?matchingType,
      'port': ?port,
      'priority': ?priority,
      'selector': ?selector,
      'tag': ?tag,
      'type': ?type,
      'usage': ?usage,
      'value': ?value,
      'weight': ?weight,
    };
  }

  factory RecordData.fromMap(Map<String, dynamic> map) {
    return RecordData(
      algorithm: map['algorithm'] == null ? null : (map['algorithm'] as int).input(),
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint'] as String).input(),
      flag: map['flag'] == null ? null : (map['flag'] as int).input(),
      keyTag: map['keyTag'] == null ? null : (map['keyTag'] as int).input(),
      matchingType: map['matchingType'] == null ? null : (map['matchingType'] as int).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      selector: map['selector'] == null ? null : (map['selector'] as int).input(),
      tag: map['tag'] == null ? null : (map['tag'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as int).input(),
      usage: map['usage'] == null ? null : (map['usage'] as int).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}

