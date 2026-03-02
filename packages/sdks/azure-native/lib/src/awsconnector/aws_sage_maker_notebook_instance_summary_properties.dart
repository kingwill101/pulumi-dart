// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_type_enum_value.dart';
import 'notebook_instance_status_enum_value.dart';

/// Definition of awsSageMakerNotebookInstanceSummary
class AwsSageMakerNotebookInstanceSummaryProperties {
  /// <p>An array of up to three Git repositories associated with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in <a href='https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html'>Amazon Web Services CodeCommit</a> or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see <a href='https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html'>Associating Git Repositories with SageMaker Notebook Instances</a>.</p>
  final pulumi.Input<List<String>>? additionalCodeRepositories;
  /// <p>A timestamp that shows when the notebook instance was created.</p>
  final pulumi.Input<String>? creationTime;
  /// <p>The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in <a href='https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html'>Amazon Web Services CodeCommit</a> or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see <a href='https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html'>Associating Git Repositories with SageMaker Notebook Instances</a>.</p>
  final pulumi.Input<String>? defaultCodeRepository;
  /// <p>The type of ML compute instance that the notebook instance is running on.</p>
  final pulumi.Input<InstanceTypeEnumValue>? instanceType;
  /// <p>A timestamp that shows when the notebook instance was last modified.</p>
  final pulumi.Input<String>? lastModifiedTime;
  /// <p>The Amazon Resource Name (ARN) of the notebook instance.</p>
  final pulumi.Input<String>? notebookInstanceArn;
  /// <p>The name of a notebook instance lifecycle configuration associated with this notebook instance.</p> <p>For information about notebook instance lifestyle configurations, see <a href='https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html'>Step 2.1: (Optional) Customize a Notebook Instance</a>.</p>
  final pulumi.Input<String>? notebookInstanceLifecycleConfigName;
  /// <p>The name of the notebook instance that you want a summary for.</p>
  final pulumi.Input<String>? notebookInstanceName;
  /// <p>The status of the notebook instance.</p>
  final pulumi.Input<NotebookInstanceStatusEnumValue>? notebookInstanceStatus;
  /// <p>The URL that you use to connect to the Jupyter notebook running in your notebook instance. </p>
  final pulumi.Input<String>? url;

  /// Creates a new [AwsSageMakerNotebookInstanceSummaryProperties].
  /// [additionalCodeRepositories] <p>An array of up to three Git repositories associated with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in <a href='https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html'>Amazon Web Services CodeCommit</a> or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see <a href='https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html'>Associating Git Repositories with SageMaker Notebook Instances</a>.</p>
  /// [creationTime] <p>A timestamp that shows when the notebook instance was created.</p>
  /// [defaultCodeRepository] <p>The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in <a href='https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html'>Amazon Web Services CodeCommit</a> or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see <a href='https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html'>Associating Git Repositories with SageMaker Notebook Instances</a>.</p>
  /// [instanceType] <p>The type of ML compute instance that the notebook instance is running on.</p>
  /// [lastModifiedTime] <p>A timestamp that shows when the notebook instance was last modified.</p>
  /// [notebookInstanceArn] <p>The Amazon Resource Name (ARN) of the notebook instance.</p>
  /// [notebookInstanceLifecycleConfigName] <p>The name of a notebook instance lifecycle configuration associated with this notebook instance.</p> <p>For information about notebook instance lifestyle configurations, see <a href='https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html'>Step 2.1: (Optional) Customize a Notebook Instance</a>.</p>
  /// [notebookInstanceName] <p>The name of the notebook instance that you want a summary for.</p>
  /// [notebookInstanceStatus] <p>The status of the notebook instance.</p>
  /// [url] <p>The URL that you use to connect to the Jupyter notebook running in your notebook instance. </p>
  AwsSageMakerNotebookInstanceSummaryProperties({
    this.additionalCodeRepositories,
    this.creationTime,
    this.defaultCodeRepository,
    this.instanceType,
    this.lastModifiedTime,
    this.notebookInstanceArn,
    this.notebookInstanceLifecycleConfigName,
    this.notebookInstanceName,
    this.notebookInstanceStatus,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCodeRepositories': ?additionalCodeRepositories,
      'creationTime': ?creationTime,
      'defaultCodeRepository': ?defaultCodeRepository,
      'instanceType': ?pulumi.Input.mapOptionalInputValue<InstanceTypeEnumValue, Map<String, dynamic>>(instanceType, (value) => value.toMap()),
      'lastModifiedTime': ?lastModifiedTime,
      'notebookInstanceArn': ?notebookInstanceArn,
      'notebookInstanceLifecycleConfigName': ?notebookInstanceLifecycleConfigName,
      'notebookInstanceName': ?notebookInstanceName,
      'notebookInstanceStatus': ?pulumi.Input.mapOptionalInputValue<NotebookInstanceStatusEnumValue, Map<String, dynamic>>(notebookInstanceStatus, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory AwsSageMakerNotebookInstanceSummaryProperties.fromMap(Map<String, dynamic> map) {
    return AwsSageMakerNotebookInstanceSummaryProperties(
      additionalCodeRepositories: map['additionalCodeRepositories'] == null ? null : ((map['additionalCodeRepositories'] as List).cast<String>()).input(),
      creationTime: map['creationTime'] == null ? null : (map['creationTime'] as String).input(),
      defaultCodeRepository: map['defaultCodeRepository'] == null ? null : (map['defaultCodeRepository'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (InstanceTypeEnumValue.fromMap((map['instanceType'] as Map).cast<String, dynamic>())).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      notebookInstanceArn: map['notebookInstanceArn'] == null ? null : (map['notebookInstanceArn'] as String).input(),
      notebookInstanceLifecycleConfigName: map['notebookInstanceLifecycleConfigName'] == null ? null : (map['notebookInstanceLifecycleConfigName'] as String).input(),
      notebookInstanceName: map['notebookInstanceName'] == null ? null : (map['notebookInstanceName'] as String).input(),
      notebookInstanceStatus: map['notebookInstanceStatus'] == null ? null : (NotebookInstanceStatusEnumValue.fromMap((map['notebookInstanceStatus'] as Map).cast<String, dynamic>())).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

