// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vod_editing_project_editing_project_args_doc}
/// The set of arguments for EditingProject.
/// {@endtemplate}
/// {@macro pulumi_vod_editing_project_editing_project_args_doc}
class EditingProjectArgs {
  /// The thumbnail URL of the online editing project. If you do not specify this parameter and the video track in the timeline has mezzanine files, the thumbnail of the first mezzanine file in the timeline is used.
  final pulumi.Input<String>? coverUrl;

  /// The region where you want to create the online editing project.
  final pulumi.Input<String>? division;

  /// The description of the online editing project.
  final pulumi.Input<String>? editingProjectName;

  /// The timeline of the online editing project, in JSON format. For more information about the structure, see [Timeline](https://www.alibabacloud.com/help/en/apsaravideo-for-vod/latest/basic-structures). If you do not specify this parameter, an empty timeline is created and the duration of the online editing project is zero.
  final pulumi.Input<String>? timeline;

  /// The title of the online editing project.
  final pulumi.Input<String> title;

  /// Creates a new [EditingProjectArgs].
  /// [coverUrl] The thumbnail URL of the online editing project. If you do not specify this parameter and the video track in the timeline has mezzanine files, the thumbnail of the first mezzanine file in the timeline is used.
  /// [division] The region where you want to create the online editing project.
  /// [editingProjectName] The description of the online editing project.
  /// [timeline] The timeline of the online editing project, in JSON format. For more information about the structure, see [Timeline](https://www.alibabacloud.com/help/en/apsaravideo-for-vod/latest/basic-structures). If you do not specify this parameter, an empty timeline is created and the duration of the online editing project is zero.
  /// [title] The title of the online editing project.
  EditingProjectArgs({
    this.coverUrl,
    this.division,
    this.editingProjectName,
    this.timeline,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coverUrl': ?coverUrl,
      'division': ?division,
      'editingProjectName': ?editingProjectName,
      'timeline': ?timeline,
      'title': title,
    };
  }

  factory EditingProjectArgs.fromMap(Map<String, dynamic> map) {
    return EditingProjectArgs(
      coverUrl: (() {
        final guardedValue = map['coverUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      division: (() {
        final guardedValue = map['division'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      editingProjectName: (() {
        final guardedValue = map['editingProjectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeline: (() {
        final guardedValue = map['timeline'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
