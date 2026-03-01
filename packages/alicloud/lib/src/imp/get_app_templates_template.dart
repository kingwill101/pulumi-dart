// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_templates_template_config_list.dart';

class GetAppTemplatesTemplate {
  /// Apply template creator.
  final String appTemplateCreator;
  /// The first ID of the resource.
  final String appTemplateId;
  /// The name of the resource.
  final String appTemplateName;
  /// List of components.
  final List<String> componentLists;
  /// List of config.
  final List<GetAppTemplatesTemplateConfigList> configLists;
  /// Creation time.
  final String createTime;
  /// The ID of the App Template.
  final String id;
  /// Integration mode (Integrated SDK:paasSDK, Model Room: standardRoom).
  final String integrationMode;
  /// Application Template scenario, e-commerce business, classroom classroom.
  final String scene;
  /// SDK information.
  final String sdkInfo;
  /// Model room information.
  final String standardRoomInfo;
  /// Application template usage status.
  final String status;

  /// Creates a new [GetAppTemplatesTemplate].
  /// [appTemplateCreator] Apply template creator.
  /// [appTemplateId] The first ID of the resource.
  /// [appTemplateName] The name of the resource.
  /// [componentLists] List of components.
  /// [configLists] List of config.
  /// [createTime] Creation time.
  /// [id] The ID of the App Template.
  /// [integrationMode] Integration mode (Integrated SDK:paasSDK, Model Room: standardRoom).
  /// [scene] Application Template scenario, e-commerce business, classroom classroom.
  /// [sdkInfo] SDK information.
  /// [standardRoomInfo] Model room information.
  /// [status] Application template usage status.
  GetAppTemplatesTemplate({
    required this.appTemplateCreator,
    required this.appTemplateId,
    required this.appTemplateName,
    required this.componentLists,
    required this.configLists,
    required this.createTime,
    required this.id,
    required this.integrationMode,
    required this.scene,
    required this.sdkInfo,
    required this.standardRoomInfo,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appTemplateCreator': appTemplateCreator,
      'appTemplateId': appTemplateId,
      'appTemplateName': appTemplateName,
      'componentLists': componentLists,
      'configLists': pulumi.Input.encodeList<GetAppTemplatesTemplateConfigList, Map<String, dynamic>>(configLists, (value) => value.toMap()),
      'createTime': createTime,
      'id': id,
      'integrationMode': integrationMode,
      'scene': scene,
      'sdkInfo': sdkInfo,
      'standardRoomInfo': standardRoomInfo,
      'status': status,
    };
  }

  factory GetAppTemplatesTemplate.fromMap(Map<String, dynamic> map) {
    return GetAppTemplatesTemplate(
      appTemplateCreator: map['appTemplateCreator'] as String,
      appTemplateId: map['appTemplateId'] as String,
      appTemplateName: map['appTemplateName'] as String,
      componentLists: (map['componentLists'] as List).cast<String>(),
      configLists: pulumi.Input.decodeList<GetAppTemplatesTemplateConfigList>(map['configLists'], (value) => GetAppTemplatesTemplateConfigList.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      integrationMode: map['integrationMode'] as String,
      scene: map['scene'] as String,
      sdkInfo: map['sdkInfo'] as String,
      standardRoomInfo: map['standardRoomInfo'] as String,
      status: map['status'] as String,
    );
  }
}

