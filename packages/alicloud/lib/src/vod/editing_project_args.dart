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
    String? coverUrl,
    String? division,
    String? editingProjectName,
    String? timeline,
    required String title,
  }) :
      coverUrl = pulumi.Input.asOptionalInput<String>(coverUrl),
      division = pulumi.Input.asOptionalInput<String>(division),
      editingProjectName = pulumi.Input.asOptionalInput<String>(editingProjectName),
      timeline = pulumi.Input.asOptionalInput<String>(timeline),
      title = pulumi.Input.asInput<String>(title);

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
      coverUrl: map['coverUrl'] == null ? null : map['coverUrl'] as String,
      division: map['division'] == null ? null : map['division'] as String,
      editingProjectName: map['editingProjectName'] == null ? null : map['editingProjectName'] as String,
      timeline: map['timeline'] == null ? null : map['timeline'] as String,
      title: map['title'] as String,
    );
  }
}

