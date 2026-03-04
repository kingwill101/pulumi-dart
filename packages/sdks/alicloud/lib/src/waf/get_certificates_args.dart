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
    this.domain,
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
  });

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
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
