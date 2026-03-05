// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_response.dart';
import 'dead_letter_config_response.dart';
import 'environment_response.dart';
import 'ephemeral_storage_response.dart';
import 'file_system_config_response.dart';
import 'image_config_response.dart';
import 'logging_config_response.dart';
import 'runtime_management_config_response.dart';
import 'snap_start_response.dart';
import 'snap_start_response_response.dart';
import 'tag_response.dart';
import 'tracing_config_response.dart';
import 'vpc_config_response.dart';

/// Definition of awsLambdaFunction
class AwsLambdaFunctionPropertiesResponse {
  /// The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64). The default value is ``x86_64``.
  final pulumi.Input<List<String>>? architectures;
  /// Property arn
  final pulumi.Input<String>? arn;
  /// The code for the function. The [deployment package](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html) for a Lambda function. To deploy a function defined as a container image, you specify the location of a container image in the Amazon ECR registry. For a .zip file deployment package, you can specify the location of an object in Amazon S3. For Node.js and Python functions, you can specify the function code inline in the template. Changes to a deployment package in Amazon S3 or a container image in ECR are not detected automatically during stack updates. To update the function code, change the object key or version in the template.
  final pulumi.Input<CodeResponse>? code;
  /// To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function.
  final pulumi.Input<String>? codeSigningConfigArn;
  /// A dead-letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see [Dead-letter queues](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq). The [dead-letter queue](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq) for failed asynchronous invocations.
  final pulumi.Input<DeadLetterConfigResponse>? deadLetterConfig;
  /// A description of the function.
  final pulumi.Input<String>? description;
  /// Environment variables that are accessible from function code during execution. A function's environment variable settings. You can use environment variables to adjust your function's behavior without updating code. An environment variable is a pair of strings that are stored in a function's version-specific configuration.
  final pulumi.Input<EnvironmentResponse>? environment;
  /// The size of the function's ``/tmp`` directory in MB. The default value is 512, but it can be any whole number between 512 and 10,240 MB. The size of the function's ``/tmp`` directory in MB. The default value is 512, but it can be any whole number between 512 and 10,240 MB.
  final pulumi.Input<EphemeralStorageResponse>? ephemeralStorage;
  /// Connection settings for an Amazon EFS file system. To connect a function to a file system, a mount target must be available in every Availability Zone that your function connects to. If your template contains an [AWS::EFS::MountTarget](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html) resource, you must also specify a ``DependsOn`` attribute to ensure that the mount target is created or updated before the function. For more information about using the ``DependsOn`` attribute, see [DependsOn Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html).
  final pulumi.Input<List<FileSystemConfigResponse>>? fileSystemConfigs;
  /// The name of the Lambda function, up to 64 characters in length. If you don't specify a name, CFN generates one. If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  final pulumi.Input<String>? functionName;
  /// The name of the method within your code that Lambda calls to run your function. Handler is required if the deployment package is a .zip file archive. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see [Lambda programming model](https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html).
  final pulumi.Input<String>? handler;
  /// Configuration values that override the container image Dockerfile settings. For more information, see [Container image settings](https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms). Configuration values that override the container image Dockerfile settings. For more information, see [Container image settings](https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms).
  final pulumi.Input<ImageConfigResponse>? imageConfig;
  /// The ARN of the KMSlong (KMS) customer managed key that's used to encrypt your function's [environment variables](https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption). When [Lambda SnapStart](https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html) is activated, Lambda also uses this key is to encrypt your function's snapshot. If you deploy your function using a container image, Lambda also uses this key to encrypt your function when it's deployed. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). If you don't provide a customer managed key, Lambda uses a default service key.
  final pulumi.Input<String>? kmsKeyArn;
  /// A list of [function layers](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html) to add to the function's execution environment. Specify each layer by its ARN, including the version.
  final pulumi.Input<List<String>>? layers;
  /// The function's Amazon CloudWatch Logs configuration settings. The function's Amazon CloudWatch Logs configuration settings.
  final pulumi.Input<LoggingConfigResponse>? loggingConfig;
  /// The amount of [memory available to the function](https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console) at runtime. Increasing the function memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB. Note that new AWS accounts have reduced concurrency and memory quotas. AWS raises these quotas automatically based on your usage. You can also request a quota increase.
  final pulumi.Input<int>? memorySize;
  /// The type of deployment package. Set to ``Image`` for container image and set ``Zip`` for .zip file archive.
  final pulumi.Input<String>? packageType;
  /// The number of simultaneous executions to reserve for the function.
  final pulumi.Input<int>? reservedConcurrentExecutions;
  /// The Amazon Resource Name (ARN) of the function's execution role.
  final pulumi.Input<String>? role;
  /// The identifier of the function's [runtime](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html). Runtime is required if the deployment package is a .zip file archive. The following list includes deprecated runtimes. For more information, see [Runtime deprecation policy](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy).
  final pulumi.Input<String>? runtime;
  /// Sets the runtime management configuration for a function's version. For more information, see [Runtime updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html). Sets the runtime management configuration for a function's version. For more information, see [Runtime updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).
  final pulumi.Input<RuntimeManagementConfigResponse>? runtimeManagementConfig;
  /// The function's [SnapStart](https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html) setting. The function's [SnapStart](https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html) setting.
  final pulumi.Input<SnapStartResponse>? snapStart;
  /// The function's [SnapStart](https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html) setting.
  final pulumi.Input<SnapStartResponseResponse>? snapStartResponse;
  /// A list of [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to apply to the function.
  final pulumi.Input<List<TagResponse>>? tags;
  /// The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds. For more information, see [Lambda execution environment](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html).
  final pulumi.Input<int>? timeout;
  /// Set ``Mode`` to ``Active`` to sample and trace a subset of incoming requests with [X-Ray](https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html). The function's [](https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html) tracing configuration. To sample and record incoming requests, set ``Mode`` to ``Active``.
  final pulumi.Input<TracingConfigResponse>? tracingConfig;
  /// For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can access resources and the internet only through that VPC. For more information, see [Configuring a Lambda function to access resources in a VPC](https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html). The VPC security groups and subnets that are attached to a Lambda function. When you connect a function to a VPC, Lambda creates an elastic network interface for each combination of security group and subnet in the function's VPC configuration. The function can only access resources and the internet through that VPC. For more information, see [VPC Settings](https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html).  When you delete a function, CFN monitors the state of its network interfaces and waits for Lambda to delete them before proceeding. If the VPC is defined in the same stack, the network interfaces need to be deleted by Lambda before CFN can delete the VPC's resources. To monitor network interfaces, CFN needs the ``ec2:DescribeNetworkInterfaces`` permission. It obtains this from the user or role that modifies the stack. If you don't provide this permission, CFN does not wait for network interfaces to be deleted.
  final pulumi.Input<VpcConfigResponse>? vpcConfig;

  /// Creates a new [AwsLambdaFunctionPropertiesResponse].
  /// [architectures] The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64). The default value is ``x86_64``.
  /// [arn] Property arn
  /// [code] The code for the function. The [deployment package](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html) for a Lambda function. To deploy a function defined as a container image, you specify the location of a container image in the Amazon ECR registry. For a .zip file deployment package, you can specify the location of an object in Amazon S3. For Node.js and Python functions, you can specify the function code inline in the template. Changes to a deployment package in Amazon S3 or a container image in ECR are not detected automatically during stack updates. To update the function code, change the object key or version in the template.
  /// [codeSigningConfigArn] To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function.
  /// [deadLetterConfig] A dead-letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see [Dead-letter queues](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq). The [dead-letter queue](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq) for failed asynchronous invocations.
  /// [description] A description of the function.
  /// [environment] Environment variables that are accessible from function code during execution. A function's environment variable settings. You can use environment variables to adjust your function's behavior without updating code. An environment variable is a pair of strings that are stored in a function's version-specific configuration.
  /// [ephemeralStorage] The size of the function's ``/tmp`` directory in MB. The default value is 512, but it can be any whole number between 512 and 10,240 MB. The size of the function's ``/tmp`` directory in MB. The default value is 512, but it can be any whole number between 512 and 10,240 MB.
  /// [fileSystemConfigs] Connection settings for an Amazon EFS file system. To connect a function to a file system, a mount target must be available in every Availability Zone that your function connects to. If your template contains an [AWS::EFS::MountTarget](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html) resource, you must also specify a ``DependsOn`` attribute to ensure that the mount target is created or updated before the function. For more information about using the ``DependsOn`` attribute, see [DependsOn Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html).
  /// [functionName] The name of the Lambda function, up to 64 characters in length. If you don't specify a name, CFN generates one. If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
  /// [handler] The name of the method within your code that Lambda calls to run your function. Handler is required if the deployment package is a .zip file archive. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see [Lambda programming model](https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html).
  /// [imageConfig] Configuration values that override the container image Dockerfile settings. For more information, see [Container image settings](https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms). Configuration values that override the container image Dockerfile settings. For more information, see [Container image settings](https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms).
  /// [kmsKeyArn] The ARN of the KMSlong (KMS) customer managed key that's used to encrypt your function's [environment variables](https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption). When [Lambda SnapStart](https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html) is activated, Lambda also uses this key is to encrypt your function's snapshot. If you deploy your function using a container image, Lambda also uses this key to encrypt your function when it's deployed. Note that this is not the same key that's used to protect your container image in the Amazon Elastic Container Registry (Amazon ECR). If you don't provide a customer managed key, Lambda uses a default service key.
  /// [layers] A list of [function layers](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html) to add to the function's execution environment. Specify each layer by its ARN, including the version.
  /// [loggingConfig] The function's Amazon CloudWatch Logs configuration settings. The function's Amazon CloudWatch Logs configuration settings.
  /// [memorySize] The amount of [memory available to the function](https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console) at runtime. Increasing the function memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB. Note that new AWS accounts have reduced concurrency and memory quotas. AWS raises these quotas automatically based on your usage. You can also request a quota increase.
  /// [packageType] The type of deployment package. Set to ``Image`` for container image and set ``Zip`` for .zip file archive.
  /// [reservedConcurrentExecutions] The number of simultaneous executions to reserve for the function.
  /// [role] The Amazon Resource Name (ARN) of the function's execution role.
  /// [runtime] The identifier of the function's [runtime](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html). Runtime is required if the deployment package is a .zip file archive. The following list includes deprecated runtimes. For more information, see [Runtime deprecation policy](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy).
  /// [runtimeManagementConfig] Sets the runtime management configuration for a function's version. For more information, see [Runtime updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html). Sets the runtime management configuration for a function's version. For more information, see [Runtime updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).
  /// [snapStart] The function's [SnapStart](https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html) setting. The function's [SnapStart](https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html) setting.
  /// [snapStartResponse] The function's [SnapStart](https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html) setting.
  /// [tags] A list of [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to apply to the function.
  /// [timeout] The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds. The maximum allowed value is 900 seconds. For more information, see [Lambda execution environment](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html).
  /// [tracingConfig] Set ``Mode`` to ``Active`` to sample and trace a subset of incoming requests with [X-Ray](https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html). The function's [](https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html) tracing configuration. To sample and record incoming requests, set ``Mode`` to ``Active``.
  /// [vpcConfig] For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can access resources and the internet only through that VPC. For more information, see [Configuring a Lambda function to access resources in a VPC](https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html). The VPC security groups and subnets that are attached to a Lambda function. When you connect a function to a VPC, Lambda creates an elastic network interface for each combination of security group and subnet in the function's VPC configuration. The function can only access resources and the internet through that VPC. For more information, see [VPC Settings](https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html).  When you delete a function, CFN monitors the state of its network interfaces and waits for Lambda to delete them before proceeding. If the VPC is defined in the same stack, the network interfaces need to be deleted by Lambda before CFN can delete the VPC's resources. To monitor network interfaces, CFN needs the ``ec2:DescribeNetworkInterfaces`` permission. It obtains this from the user or role that modifies the stack. If you don't provide this permission, CFN does not wait for network interfaces to be deleted.
  AwsLambdaFunctionPropertiesResponse({
    this.architectures,
    this.arn,
    this.code,
    this.codeSigningConfigArn,
    this.deadLetterConfig,
    this.description,
    this.environment,
    this.ephemeralStorage,
    this.fileSystemConfigs,
    this.functionName,
    this.handler,
    this.imageConfig,
    this.kmsKeyArn,
    this.layers,
    this.loggingConfig,
    this.memorySize,
    this.packageType,
    this.reservedConcurrentExecutions,
    this.role,
    this.runtime,
    this.runtimeManagementConfig,
    this.snapStart,
    this.snapStartResponse,
    this.tags,
    this.timeout,
    this.tracingConfig,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectures': ?architectures,
      'arn': ?arn,
      'code': ?pulumi.Input.mapOptionalInputValue<CodeResponse, Map<String, dynamic>>(code, (value) => value.toMap()),
      'codeSigningConfigArn': ?codeSigningConfigArn,
      'deadLetterConfig': ?pulumi.Input.mapOptionalInputValue<DeadLetterConfigResponse, Map<String, dynamic>>(deadLetterConfig, (value) => value.toMap()),
      'description': ?description,
      'environment': ?pulumi.Input.mapOptionalInputValue<EnvironmentResponse, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'ephemeralStorage': ?pulumi.Input.mapOptionalInputValue<EphemeralStorageResponse, Map<String, dynamic>>(ephemeralStorage, (value) => value.toMap()),
      'fileSystemConfigs': ?pulumi.Input.mapOptionalInputValue<List<FileSystemConfigResponse>, List<Map<String, dynamic>>>(fileSystemConfigs, (value) => pulumi.Input.encodeList<FileSystemConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'functionName': ?functionName,
      'handler': ?handler,
      'imageConfig': ?pulumi.Input.mapOptionalInputValue<ImageConfigResponse, Map<String, dynamic>>(imageConfig, (value) => value.toMap()),
      'kmsKeyArn': ?kmsKeyArn,
      'layers': ?layers,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<LoggingConfigResponse, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'memorySize': ?memorySize,
      'packageType': ?packageType,
      'reservedConcurrentExecutions': ?reservedConcurrentExecutions,
      'role': ?role,
      'runtime': ?runtime,
      'runtimeManagementConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeManagementConfigResponse, Map<String, dynamic>>(runtimeManagementConfig, (value) => value.toMap()),
      'snapStart': ?pulumi.Input.mapOptionalInputValue<SnapStartResponse, Map<String, dynamic>>(snapStart, (value) => value.toMap()),
      'snapStartResponse': ?pulumi.Input.mapOptionalInputValue<SnapStartResponseResponse, Map<String, dynamic>>(snapStartResponse, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeout': ?timeout,
      'tracingConfig': ?pulumi.Input.mapOptionalInputValue<TracingConfigResponse, Map<String, dynamic>>(tracingConfig, (value) => value.toMap()),
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<VpcConfigResponse, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory AwsLambdaFunctionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsLambdaFunctionPropertiesResponse(
      architectures: (() { final guardedValue = map['architectures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CodeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      codeSigningConfigArn: (() { final guardedValue = map['codeSigningConfigArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deadLetterConfig: (() { final guardedValue = map['deadLetterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeadLetterConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeralStorage: (() { final guardedValue = map['ephemeralStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EphemeralStorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemConfigs: (() { final guardedValue = map['fileSystemConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileSystemConfigResponse>(guardedValue, (value) => FileSystemConfigResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      handler: (() { final guardedValue = map['handler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageConfig: (() { final guardedValue = map['imageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      layers: (() { final guardedValue = map['layers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memorySize: (() { final guardedValue = map['memorySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      packageType: (() { final guardedValue = map['packageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedConcurrentExecutions: (() { final guardedValue = map['reservedConcurrentExecutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeManagementConfig: (() { final guardedValue = map['runtimeManagementConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeManagementConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapStart: (() { final guardedValue = map['snapStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapStartResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapStartResponse: (() { final guardedValue = map['snapStartResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapStartResponseResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tracingConfig: (() { final guardedValue = map['tracingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TracingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

