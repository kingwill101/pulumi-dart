// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_config_list.dart';

/// {@template pulumi_imp_app_template_app_template_args_doc}
/// The set of arguments for AppTemplate.
/// {@endtemplate}
/// {@macro pulumi_imp_app_template_app_template_args_doc}
class AppTemplateArgs {
  /// The name of the resource.
  final pulumi.Input<String> appTemplateName;
  /// List of components. Its element valid values: ["component.live","component.liveRecord","component.liveBeauty","component.rtc","component.rtcRecord","component.im","component.whiteboard","component.liveSecurity","component.chatSecurity"].
  final pulumi.Input<List<String>> componentLists;
  /// Configuration list. It have several default configs after the resource is created. See the following `Block config_list`.
  final pulumi.Input<List<AppTemplateConfigList>>? configLists;
  /// Integration mode. Valid values:
  /// * paasSDK: Integrated SDK.
  /// * standardRoom: Model Room.
  final pulumi.Input<String>? integrationMode;
  /// Application Template scenario. Valid values: ["business", "classroom"].
  final pulumi.Input<String>? scene;

  /// Creates a new [AppTemplateArgs].
  /// [appTemplateName] The name of the resource.
  /// [componentLists] List of components. Its element valid values: ["component.live","component.liveRecord","component.liveBeauty","component.rtc","component.rtcRecord","component.im","component.whiteboard","component.liveSecurity","component.chatSecurity"].
  /// [configLists] Configuration list. It have several default configs after the resource is created. See the following `Block config_list`.
  /// [integrationMode] Integration mode. Valid values:
  /// [scene] Application Template scenario. Valid values: ["business", "classroom"].
  AppTemplateArgs({
    required pulumi.Output<String> appTemplateName,
    required pulumi.Output<List<String>> componentLists,
    pulumi.Output<List<AppTemplateConfigList>>? configLists,
    pulumi.Output<String>? integrationMode,
    pulumi.Output<String>? scene,
  }) :
      appTemplateName = pulumi.Input.asInput<String>(appTemplateName),
      componentLists = pulumi.Input.asInput<List<String>>(componentLists),
      configLists = pulumi.Input.asOptionalInput<List<AppTemplateConfigList>>(configLists),
      integrationMode = pulumi.Input.asOptionalInput<String>(integrationMode),
      scene = pulumi.Input.asOptionalInput<String>(scene);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appTemplateName': appTemplateName,
      'componentLists': componentLists,
      'configLists': ?pulumi.Input.mapOptionalInputValue<List<AppTemplateConfigList>, List<Map<String, dynamic>>>(configLists, (value) => pulumi.Input.encodeList<AppTemplateConfigList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integrationMode': ?integrationMode,
      'scene': ?scene,
    };
  }

  factory AppTemplateArgs.fromMap(Map<String, dynamic> map) {
    return AppTemplateArgs(
      appTemplateName: pulumi.Output.create<String>(map['appTemplateName'] as String),
      componentLists: pulumi.Output.create<List<String>>((map['componentLists'] as List).cast<String>()),
      configLists: map['configLists'] == null ? null : pulumi.Output.create<List<AppTemplateConfigList>>(pulumi.Input.decodeList<AppTemplateConfigList>(map['configLists'], (value) => AppTemplateConfigList.fromMap((value as Map).cast<String, dynamic>()))),
      integrationMode: map['integrationMode'] == null ? null : pulumi.Output.create<String>(map['integrationMode'] as String),
      scene: map['scene'] == null ? null : pulumi.Output.create<String>(map['scene'] as String),
    );
  }
}

