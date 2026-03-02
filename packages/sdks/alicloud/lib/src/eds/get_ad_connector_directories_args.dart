// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_ad_connector_directories_get_ad_connector_directories_args_doc}
/// Arguments for getAdConnectorDirectories.
/// {@endtemplate}
/// {@macro pulumi_eds_get_ad_connector_directories_get_ad_connector_directories_args_doc}
class GetAdConnectorDirectoriesArgs {
  /// A list of Ad Connector Directory IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Ad Connector Directory name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of directory. Valid values: `REGISTERING`, `REGISTERED`, `DEREGISTERING`, `NEEDCONFIGTRUST`, `CONFIGTRUSTFAILED`, `DEREGISTERED`, `ERROR`, `CONFIGTRUSTING`, `NEEDCONFIGUSER`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAdConnectorDirectoriesArgs].
  /// [ids] A list of Ad Connector Directory IDs.
  /// [nameRegex] A regex string to filter results by Ad Connector Directory name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of directory. Valid values: `REGISTERING`, `REGISTERED`, `DEREGISTERING`, `NEEDCONFIGTRUST`, `CONFIGTRUSTFAILED`, `DEREGISTERED`, `ERROR`, `CONFIGTRUSTING`, `NEEDCONFIGUSER`.
  GetAdConnectorDirectoriesArgs({
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

  factory GetAdConnectorDirectoriesArgs.fromMap(Map<String, dynamic> map) {
    return GetAdConnectorDirectoriesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

