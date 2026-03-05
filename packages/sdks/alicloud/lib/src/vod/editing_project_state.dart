// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EditingProject resources.
class EditingProjectState {
  /// The thumbnail URL of the online editing project. If you do not specify this parameter and the video track in the timeline has mezzanine files, the thumbnail of the first mezzanine file in the timeline is used.
  final pulumi.Input<String>? coverUrl;
  /// The region where you want to create the online editing project.
  final pulumi.Input<String>? division;
  /// The description of the online editing project.
  final pulumi.Input<String>? editingProjectName;
  /// The Status of the resource.
  final pulumi.Input<String>? status;
  /// The timeline of the online editing project, in JSON format. For more information about the structure, see [Timeline](https://www.alibabacloud.com/help/en/apsaravideo-for-vod/latest/basic-structures). If you do not specify this parameter, an empty timeline is created and the duration of the online editing project is zero.
  final pulumi.Input<String>? timeline;
  /// The title of the online editing project.
  final pulumi.Input<String>? title;

  /// Creates a new [EditingProjectState].
  /// [coverUrl] The thumbnail URL of the online editing project. If you do not specify this parameter and the video track in the timeline has mezzanine files, the thumbnail of the first mezzanine file in the timeline is used.
  /// [division] The region where you want to create the online editing project.
  /// [editingProjectName] The description of the online editing project.
  /// [status] The Status of the resource.
  /// [timeline] The timeline of the online editing project, in JSON format. For more information about the structure, see [Timeline](https://www.alibabacloud.com/help/en/apsaravideo-for-vod/latest/basic-structures). If you do not specify this parameter, an empty timeline is created and the duration of the online editing project is zero.
  /// [title] The title of the online editing project.
  EditingProjectState({
    this.coverUrl,
    this.division,
    this.editingProjectName,
    this.status,
    this.timeline,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coverUrl': ?coverUrl,
      'division': ?division,
      'editingProjectName': ?editingProjectName,
      'status': ?status,
      'timeline': ?timeline,
      'title': ?title,
    };
  }

  factory EditingProjectState.fromMap(Map<String, dynamic> map) {
    return EditingProjectState(
      coverUrl: (() { final guardedValue = map['coverUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      division: (() { final guardedValue = map['division']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      editingProjectName: (() { final guardedValue = map['editingProjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeline: (() { final guardedValue = map['timeline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

