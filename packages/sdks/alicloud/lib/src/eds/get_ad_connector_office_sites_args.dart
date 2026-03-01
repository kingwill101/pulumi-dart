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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

