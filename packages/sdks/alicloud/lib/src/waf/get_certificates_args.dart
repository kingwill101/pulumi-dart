// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_get_certificates_get_certificates_args_doc}
/// Arguments for getCertificates.
/// {@endtemplate}
/// {@macro pulumi_waf_get_certificates_get_certificates_args_doc}
class GetCertificatesArgs {
  /// WAF domain name.
  final pulumi.Input<String>? domain;
  /// A list of Certificate IDs.
  final pulumi.Input<List<String>>? ids;
  /// WAF instance ID.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by Certificate name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetCertificatesArgs].
  /// [domain] WAF domain name.
  /// [ids] A list of Certificate IDs.
  /// [instanceId] WAF instance ID.
  /// [nameRegex] A regex string to filter results by Certificate name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetCertificatesArgs({
    pulumi.Output<String>? domain,
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      domain = pulumi.Input.asOptionalInput<String>(domain),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificatesArgs(
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

