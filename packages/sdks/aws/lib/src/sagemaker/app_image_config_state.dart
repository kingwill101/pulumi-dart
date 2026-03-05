// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_image_config_code_editor_app_image_config.dart';
import 'app_image_config_jupyter_lab_image_config.dart';
import 'app_image_config_kernel_gateway_image_config.dart';

/// Input properties used for looking up and filtering AppImageConfig resources.
class AppImageConfigState {
  /// The name of the App Image Config.
  final pulumi.Input<String>? appImageConfigName;
  /// The Amazon Resource Name (ARN) assigned by AWS to this App Image Config.
  final pulumi.Input<String>? arn;
  /// The CodeEditorAppImageConfig. See Code Editor App Image Config details below.
  final pulumi.Input<AppImageConfigCodeEditorAppImageConfig>? codeEditorAppImageConfig;
  /// The JupyterLabAppImageConfig. See Jupyter Lab Image Config details below.
  final pulumi.Input<AppImageConfigJupyterLabImageConfig>? jupyterLabImageConfig;
  /// The configuration for the file system and kernels in a SageMaker AI image running as a KernelGateway app. See Kernel Gateway Image Config details below.
  final pulumi.Input<AppImageConfigKernelGatewayImageConfig>? kernelGatewayImageConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **NOTE:** Exactly one of `code_editor_app_image_config`, `jupyter_lab_image_config`, or `kernel_gateway_image_config` must be configured. Empty blocks (e.g., `code_editor_app_image_config {}`) are valid configurations.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AppImageConfigState].
  /// [appImageConfigName] The name of the App Image Config.
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this App Image Config.
  /// [codeEditorAppImageConfig] The CodeEditorAppImageConfig. See Code Editor App Image Config details below.
  /// [jupyterLabImageConfig] The JupyterLabAppImageConfig. See Jupyter Lab Image Config details below.
  /// [kernelGatewayImageConfig] The configuration for the file system and kernels in a SageMaker AI image running as a KernelGateway app. See Kernel Gateway Image Config details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AppImageConfigState({
    this.appImageConfigName,
    this.arn,
    this.codeEditorAppImageConfig,
    this.jupyterLabImageConfig,
    this.kernelGatewayImageConfig,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appImageConfigName': ?appImageConfigName,
      'arn': ?arn,
      'codeEditorAppImageConfig': ?pulumi.Input.mapOptionalInputValue<AppImageConfigCodeEditorAppImageConfig, Map<String, dynamic>>(codeEditorAppImageConfig, (value) => value.toMap()),
      'jupyterLabImageConfig': ?pulumi.Input.mapOptionalInputValue<AppImageConfigJupyterLabImageConfig, Map<String, dynamic>>(jupyterLabImageConfig, (value) => value.toMap()),
      'kernelGatewayImageConfig': ?pulumi.Input.mapOptionalInputValue<AppImageConfigKernelGatewayImageConfig, Map<String, dynamic>>(kernelGatewayImageConfig, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AppImageConfigState.fromMap(Map<String, dynamic> map) {
    return AppImageConfigState(
      appImageConfigName: (() { final guardedValue = map['appImageConfigName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeEditorAppImageConfig: (() { final guardedValue = map['codeEditorAppImageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppImageConfigCodeEditorAppImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jupyterLabImageConfig: (() { final guardedValue = map['jupyterLabImageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppImageConfigJupyterLabImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kernelGatewayImageConfig: (() { final guardedValue = map['kernelGatewayImageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppImageConfigKernelGatewayImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

