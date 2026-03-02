// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_templates_template_config_list.dart';

class GetAppTemplatesTemplate {
  /// Apply template creator.
  final pulumi.Input<String> appTemplateCreator;
  /// The first ID of the resource.
  final pulumi.Input<String> appTemplateId;
  /// The name of the resource.
  final pulumi.Input<String> appTemplateName;
  /// List of components.
  final pulumi.Input<List<String>> componentLists;
  /// List of config.
  final pulumi.Input<List<GetAppTemplatesTemplateConfigList>> configLists;
  /// Creation time.
  final pulumi.Input<String> createTime;
  /// The ID of the App Template.
  final pulumi.Input<String> id;
  /// Integration mode (Integrated SDK:paasSDK, Model Room: standardRoom).
  final pulumi.Input<String> integrationMode;
  /// Application Template scenario, e-commerce business, classroom classroom.
  final pulumi.Input<String> scene;
  /// SDK information.
  final pulumi.Input<String> sdkInfo;
  /// Model room information.
  final pulumi.Input<String> standardRoomInfo;
  /// Application template usage status.
  final pulumi.Input<String> status;

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
      'configLists': pulumi.Input.mapInputValue<List<GetAppTemplatesTemplateConfigList>, List<Map<String, dynamic>>>(configLists, (value) => pulumi.Input.encodeList<GetAppTemplatesTemplateConfigList, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      appTemplateCreator: (map['appTemplateCreator'] as String).input(),
      appTemplateId: (map['appTemplateId'] as String).input(),
      appTemplateName: (map['appTemplateName'] as String).input(),
      componentLists: ((map['componentLists'] as List).cast<String>()).input(),
      configLists: (pulumi.Input.decodeList<GetAppTemplatesTemplateConfigList>(map['configLists'], (value) => GetAppTemplatesTemplateConfigList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
      integrationMode: (map['integrationMode'] as String).input(),
      scene: (map['scene'] as String).input(),
      sdkInfo: (map['sdkInfo'] as String).input(),
      standardRoomInfo: (map['standardRoomInfo'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

