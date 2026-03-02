// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_config_list.dart';

/// Input properties used for looking up and filtering AppTemplate resources.
class AppTemplateState {
  /// The name of the resource.
  final pulumi.Input<String>? appTemplateName;
  /// List of components. Its element valid values: ["component.live","component.liveRecord","component.liveBeauty","component.rtc","component.rtcRecord","component.im","component.whiteboard","component.liveSecurity","component.chatSecurity"].
  final pulumi.Input<List<String>>? componentLists;
  /// Configuration list. It have several default configs after the resource is created. See the following `Block config_list`.
  final pulumi.Input<List<AppTemplateConfigList>>? configLists;
  /// Integration mode. Valid values:
  /// * paasSDK: Integrated SDK.
  /// * standardRoom: Model Room.
  final pulumi.Input<String>? integrationMode;
  /// Application Template scenario. Valid values: ["business", "classroom"].
  final pulumi.Input<String>? scene;
  /// Application template usage status.
  final pulumi.Input<String>? status;

  /// Creates a new [AppTemplateState].
  /// [appTemplateName] The name of the resource.
  /// [componentLists] List of components. Its element valid values: ["component.live","component.liveRecord","component.liveBeauty","component.rtc","component.rtcRecord","component.im","component.whiteboard","component.liveSecurity","component.chatSecurity"].
  /// [configLists] Configuration list. It have several default configs after the resource is created. See the following `Block config_list`.
  /// [integrationMode] Integration mode. Valid values:
  /// [scene] Application Template scenario. Valid values: ["business", "classroom"].
  /// [status] Application template usage status.
  AppTemplateState({
    this.appTemplateName,
    this.componentLists,
    this.configLists,
    this.integrationMode,
    this.scene,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appTemplateName': ?appTemplateName,
      'componentLists': ?componentLists,
      'configLists': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateConfigList>, List<Map<String, dynamic>>>(configLists, (value) => pulumi.Input.encodeList<AppTemplateConfigList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integrationMode': ?integrationMode,
      'scene': ?scene,
      'status': ?status,
    };
  }

  factory AppTemplateState.fromMap(Map<String, dynamic> map) {
    return AppTemplateState(
      appTemplateName: map['appTemplateName'] == null ? null : (map['appTemplateName'] as String).input(),
      componentLists: map['componentLists'] == null ? null : ((map['componentLists'] as List).cast<String>()).input(),
      configLists: map['configLists'] == null ? null : (pulumi.Input.decodeList<AppTemplateConfigList>(map['configLists'], (value) => AppTemplateConfigList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      integrationMode: map['integrationMode'] == null ? null : (map['integrationMode'] as String).input(),
      scene: map['scene'] == null ? null : (map['scene'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

