// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_ad_connector_office_sites_get_ad_connector_office_sites_args_doc}
/// Arguments for getAdConnectorOfficeSites.
/// {@endtemplate}
/// {@macro pulumi_eds_get_ad_connector_office_sites_get_ad_connector_office_sites_args_doc}
class GetAdConnectorOfficeSitesArgs {
  /// A list of Ad Connector Office Site IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Ad Connector Office Site name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The workspace status. Valid values:
  /// - `REGISTERING`: The workspace is being registered.
  /// - `REGISTERED`: The workspace is registered.
  /// - `DEREGISTERING`: The workspace is being deregistered.
  /// - `DEREGISTERED`: The workspace is deregistered.
  /// - `ERROR`: The configurations of the workspace are invalid.
  /// - `NEEDCONFIGTRUST`: The trust relationship needs to be configured.
  /// - `NEEDCONFIGUSER`: Users need to be configured.
  /// - `CONFIGTRUSTING`: The trust relationship is being configured.
  /// - `CONFIGTRUSTFAILED`: The trust relationship fails to be configured.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAdConnectorOfficeSitesArgs].
  /// [ids] A list of Ad Connector Office Site IDs.
  /// [nameRegex] A regex string to filter results by Ad Connector Office Site name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The workspace status. Valid values:
  GetAdConnectorOfficeSitesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAdConnectorOfficeSitesArgs.fromMap(Map<String, dynamic> map) {
    return GetAdConnectorOfficeSitesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

