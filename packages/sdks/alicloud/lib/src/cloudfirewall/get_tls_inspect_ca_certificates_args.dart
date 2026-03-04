// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_get_tls_inspect_ca_certificates_get_tls_inspect_ca_certificates_args_doc}
/// Arguments for getTlsInspectCaCertificates.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_get_tls_inspect_ca_certificates_get_tls_inspect_ca_certificates_args_doc}
class GetTlsInspectCaCertificatesArgs {
  /// CA certificate ID
  final pulumi.Input<String>? caCertId;

  /// A list of Tls Inspect Ca Certificate IDs.
  final pulumi.Input<List<String>>? ids;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Current page number.
  final pulumi.Input<int>? pageNumber;

  /// Number of records per page.
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetTlsInspectCaCertificatesArgs].
  /// [caCertId] CA certificate ID
  /// [ids] A list of Tls Inspect Ca Certificate IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Current page number.
  /// [pageSize] Number of records per page.
  GetTlsInspectCaCertificatesArgs({
    this.caCertId,
    this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertId': ?caCertId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetTlsInspectCaCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetTlsInspectCaCertificatesArgs(
      caCertId: (() {
        final guardedValue = map['caCertId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
