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
      'configLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppTemplateConfigList>,
            List<Map<String, dynamic>>
          >(
            configLists,
            (value) =>
                pulumi.Input.encodeList<
                  AppTemplateConfigList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'integrationMode': ?integrationMode,
      'scene': ?scene,
      'status': ?status,
    };
  }

  factory AppTemplateState.fromMap(Map<String, dynamic> map) {
    return AppTemplateState(
      appTemplateName: (() {
        final guardedValue = map['appTemplateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      componentLists: (() {
        final guardedValue = map['componentLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      configLists: (() {
        final guardedValue = map['configLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppTemplateConfigList>(
            guardedValue,
            (value) => AppTemplateConfigList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      integrationMode: (() {
        final guardedValue = map['integrationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scene: (() {
        final guardedValue = map['scene'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
