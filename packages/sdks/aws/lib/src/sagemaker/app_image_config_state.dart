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
  /// > **NOTE:** Exactly one of `code_editor_app_image_config`, `jupyter_lab_image_config`, or `kernel_gateway_image_config` must be configured. Empty blocks (e.g., `code_editor_app_image_config {}`) are valid configurations.
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
    pulumi.Output<String>? appImageConfigName,
    pulumi.Output<String>? arn,
    pulumi.Output<AppImageConfigCodeEditorAppImageConfig>? codeEditorAppImageConfig,
    pulumi.Output<AppImageConfigJupyterLabImageConfig>? jupyterLabImageConfig,
    pulumi.Output<AppImageConfigKernelGatewayImageConfig>? kernelGatewayImageConfig,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      appImageConfigName = pulumi.Input.asOptionalInput<String>(appImageConfigName),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      codeEditorAppImageConfig = pulumi.Input.asOptionalInput<AppImageConfigCodeEditorAppImageConfig>(codeEditorAppImageConfig),
      jupyterLabImageConfig = pulumi.Input.asOptionalInput<AppImageConfigJupyterLabImageConfig>(jupyterLabImageConfig),
      kernelGatewayImageConfig = pulumi.Input.asOptionalInput<AppImageConfigKernelGatewayImageConfig>(kernelGatewayImageConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      appImageConfigName: map['appImageConfigName'] == null ? null : pulumi.Output.create<String>(map['appImageConfigName'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      codeEditorAppImageConfig: map['codeEditorAppImageConfig'] == null ? null : pulumi.Output.create<AppImageConfigCodeEditorAppImageConfig>(AppImageConfigCodeEditorAppImageConfig.fromMap((map['codeEditorAppImageConfig'] as Map).cast<String, dynamic>())),
      jupyterLabImageConfig: map['jupyterLabImageConfig'] == null ? null : pulumi.Output.create<AppImageConfigJupyterLabImageConfig>(AppImageConfigJupyterLabImageConfig.fromMap((map['jupyterLabImageConfig'] as Map).cast<String, dynamic>())),
      kernelGatewayImageConfig: map['kernelGatewayImageConfig'] == null ? null : pulumi.Output.create<AppImageConfigKernelGatewayImageConfig>(AppImageConfigKernelGatewayImageConfig.fromMap((map['kernelGatewayImageConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

