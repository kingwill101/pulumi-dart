// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DataSharingWithGoogleSetting.
class DataSharingWithGoogleSettingArgs {
  /// Id of the Data Sharing With Google Setting.
  final Input<String> dataSharingWithGoogleSettingId;

  /// Whether data sharing should be enabled in GA products.
  final Input<bool>? enableDataSharing;

  /// Whether data sharing should be enabled in Preview products.
  final Input<bool>? enablePreviewDataSharing;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  DataSharingWithGoogleSettingArgs({
    required this.dataSharingWithGoogleSettingId,
    this.enableDataSharing,
    this.enablePreviewDataSharing,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataSharingWithGoogleSettingId'] = dataSharingWithGoogleSettingId;
    final enableDataSharingValue = enableDataSharing;
    if (enableDataSharingValue != null) {
      map['enableDataSharing'] = enableDataSharingValue;
    }
    final enablePreviewDataSharingValue = enablePreviewDataSharing;
    if (enablePreviewDataSharingValue != null) {
      map['enablePreviewDataSharing'] = enablePreviewDataSharingValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DataSharingWithGoogleSettingArgs.fromMap(Map<String, dynamic> map) {
    return DataSharingWithGoogleSettingArgs(
      dataSharingWithGoogleSettingId:
          Input.asInput<String>(map['dataSharingWithGoogleSettingId']),
      enableDataSharing: Input.asOptionalInput<bool>(map['enableDataSharing']),
      enablePreviewDataSharing:
          Input.asOptionalInput<bool>(map['enablePreviewDataSharing']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
