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
    pulumi.Output<String>? coverUrl,
    pulumi.Output<String>? division,
    pulumi.Output<String>? editingProjectName,
    pulumi.Output<String>? status,
    pulumi.Output<String>? timeline,
    pulumi.Output<String>? title,
  }) :
      coverUrl = pulumi.Input.asOptionalInput<String>(coverUrl),
      division = pulumi.Input.asOptionalInput<String>(division),
      editingProjectName = pulumi.Input.asOptionalInput<String>(editingProjectName),
      status = pulumi.Input.asOptionalInput<String>(status),
      timeline = pulumi.Input.asOptionalInput<String>(timeline),
      title = pulumi.Input.asOptionalInput<String>(title);

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
      coverUrl: map['coverUrl'] == null ? null : pulumi.Output.create<String>(map['coverUrl'] as String),
      division: map['division'] == null ? null : pulumi.Output.create<String>(map['division'] as String),
      editingProjectName: map['editingProjectName'] == null ? null : pulumi.Output.create<String>(map['editingProjectName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      timeline: map['timeline'] == null ? null : pulumi.Output.create<String>(map['timeline'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
    );
  }
}

