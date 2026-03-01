// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_customized_accelerator_git_repository.dart';

/// {@template pulumi_appplatform_spring_cloud_customized_accelerator_spring_cloud_customized_accelerator_args_doc}
/// The set of arguments for SpringCloudCustomizedAccelerator.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_customized_accelerator_spring_cloud_customized_accelerator_args_doc}
class SpringCloudCustomizedAcceleratorArgs {
  /// Specifies a list of accelerator tags.
  final pulumi.Input<List<String>>? acceleratorTags;
  /// Specifies the type of the Spring Cloud Customized Accelerator. Possible values are `Accelerator` and `Fragment`. Defaults to `Accelerator`.
  final pulumi.Input<String>? acceleratorType;
  /// Specifies the description of the Spring Cloud Customized Accelerator.
  final pulumi.Input<String>? description;
  /// Specifies the display name of the Spring Cloud Customized Accelerator..
  final pulumi.Input<String>? displayName;
  /// A `git_repository` block as defined below.
  final pulumi.Input<SpringCloudCustomizedAcceleratorGitRepository> gitRepository;
  /// Specifies the icon URL of the Spring Cloud Customized Accelerator..
  final pulumi.Input<String>? iconUrl;
  /// The name which should be used for this Spring Cloud Customized Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  final pulumi.Input<String> springCloudAcceleratorId;

  /// Creates a new [SpringCloudCustomizedAcceleratorArgs].
  /// [acceleratorTags] Specifies a list of accelerator tags.
  /// [acceleratorType] Specifies the type of the Spring Cloud Customized Accelerator. Possible values are `Accelerator` and `Fragment`. Defaults to `Accelerator`.
  /// [description] Specifies the description of the Spring Cloud Customized Accelerator.
  /// [displayName] Specifies the display name of the Spring Cloud Customized Accelerator..
  /// [gitRepository] A `git_repository` block as defined below.
  /// [iconUrl] Specifies the icon URL of the Spring Cloud Customized Accelerator..
  /// [name] The name which should be used for this Spring Cloud Customized Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  /// [springCloudAcceleratorId] The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  SpringCloudCustomizedAcceleratorArgs({
    List<String>? acceleratorTags,
    String? acceleratorType,
    String? description,
    String? displayName,
    required SpringCloudCustomizedAcceleratorGitRepository gitRepository,
    String? iconUrl,
    String? name,
    required String springCloudAcceleratorId,
  }) :
      acceleratorTags = pulumi.Input.asOptionalInput<List<String>>(acceleratorTags),
      acceleratorType = pulumi.Input.asOptionalInput<String>(acceleratorType),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      gitRepository = pulumi.Input.asInput<SpringCloudCustomizedAcceleratorGitRepository>(gitRepository),
      iconUrl = pulumi.Input.asOptionalInput<String>(iconUrl),
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudAcceleratorId = pulumi.Input.asInput<String>(springCloudAcceleratorId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorTags': ?acceleratorTags,
      'acceleratorType': ?acceleratorType,
      'description': ?description,
      'displayName': ?displayName,
      'gitRepository': pulumi.Input.mapInputValue<SpringCloudCustomizedAcceleratorGitRepository, Map<String, dynamic>>(gitRepository, (value) => value.toMap()),
      'iconUrl': ?iconUrl,
      'name': ?name,
      'springCloudAcceleratorId': springCloudAcceleratorId,
    };
  }

  factory SpringCloudCustomizedAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudCustomizedAcceleratorArgs(
      acceleratorTags: map['acceleratorTags'] == null ? null : (map['acceleratorTags'] as List).cast<String>(),
      acceleratorType: map['acceleratorType'] == null ? null : map['acceleratorType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      gitRepository: SpringCloudCustomizedAcceleratorGitRepository.fromMap((map['gitRepository'] as Map).cast<String, dynamic>()),
      iconUrl: map['iconUrl'] == null ? null : map['iconUrl'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      springCloudAcceleratorId: map['springCloudAcceleratorId'] as String,
    );
  }
}

