// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_type_enum_value.dart';
import 'notebook_instance_status_enum_value.dart';

/// Definition of awsSageMakerNotebookInstanceSummary
class AwsSageMakerNotebookInstanceSummaryProperties {
  /// &lt;p&gt;An array of up to three Git repositories associated with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in &lt;a href='https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html'&gt;Amazon Web Services CodeCommit&lt;/a&gt; or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see &lt;a href='https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html'&gt;Associating Git Repositories with SageMaker Notebook Instances&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<List<String>>? additionalCodeRepositories;
  /// &lt;p&gt;A timestamp that shows when the notebook instance was created.&lt;/p&gt;
  final pulumi.Input<String>? creationTime;
  /// &lt;p&gt;The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in &lt;a href='https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html'&gt;Amazon Web Services CodeCommit&lt;/a&gt; or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see &lt;a href='https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html'&gt;Associating Git Repositories with SageMaker Notebook Instances&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<String>? defaultCodeRepository;
  /// &lt;p&gt;The type of ML compute instance that the notebook instance is running on.&lt;/p&gt;
  final pulumi.Input<InstanceTypeEnumValue>? instanceType;
  /// &lt;p&gt;A timestamp that shows when the notebook instance was last modified.&lt;/p&gt;
  final pulumi.Input<String>? lastModifiedTime;
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the notebook instance.&lt;/p&gt;
  final pulumi.Input<String>? notebookInstanceArn;
  /// &lt;p&gt;The name of a notebook instance lifecycle configuration associated with this notebook instance.&lt;/p&gt; &lt;p&gt;For information about notebook instance lifestyle configurations, see &lt;a href='https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html'&gt;Step 2.1: (Optional) Customize a Notebook Instance&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<String>? notebookInstanceLifecycleConfigName;
  /// &lt;p&gt;The name of the notebook instance that you want a summary for.&lt;/p&gt;
  final pulumi.Input<String>? notebookInstanceName;
  /// &lt;p&gt;The status of the notebook instance.&lt;/p&gt;
  final pulumi.Input<NotebookInstanceStatusEnumValue>? notebookInstanceStatus;
  /// &lt;p&gt;The URL that you use to connect to the Jupyter notebook running in your notebook instance. &lt;/p&gt;
  final pulumi.Input<String>? url;

  /// Creates a new [AwsSageMakerNotebookInstanceSummaryProperties].
  /// [additionalCodeRepositories] &lt;p&gt;An array of up to three Git repositories associated with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in &lt;a href='https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html'&gt;Amazon Web Services CodeCommit&lt;/a&gt; or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see &lt;a href='https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html'&gt;Associating Git Repositories with SageMaker Notebook Instances&lt;/a&gt;.&lt;/p&gt;
  /// [creationTime] &lt;p&gt;A timestamp that shows when the notebook instance was created.&lt;/p&gt;
  /// [defaultCodeRepository] &lt;p&gt;The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in &lt;a href='https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html'&gt;Amazon Web Services CodeCommit&lt;/a&gt; or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see &lt;a href='https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html'&gt;Associating Git Repositories with SageMaker Notebook Instances&lt;/a&gt;.&lt;/p&gt;
  /// [instanceType] &lt;p&gt;The type of ML compute instance that the notebook instance is running on.&lt;/p&gt;
  /// [lastModifiedTime] &lt;p&gt;A timestamp that shows when the notebook instance was last modified.&lt;/p&gt;
  /// [notebookInstanceArn] &lt;p&gt;The Amazon Resource Name (ARN) of the notebook instance.&lt;/p&gt;
  /// [notebookInstanceLifecycleConfigName] &lt;p&gt;The name of a notebook instance lifecycle configuration associated with this notebook instance.&lt;/p&gt; &lt;p&gt;For information about notebook instance lifestyle configurations, see &lt;a href='https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html'&gt;Step 2.1: (Optional) Customize a Notebook Instance&lt;/a&gt;.&lt;/p&gt;
  /// [notebookInstanceName] &lt;p&gt;The name of the notebook instance that you want a summary for.&lt;/p&gt;
  /// [notebookInstanceStatus] &lt;p&gt;The status of the notebook instance.&lt;/p&gt;
  /// [url] &lt;p&gt;The URL that you use to connect to the Jupyter notebook running in your notebook instance. &lt;/p&gt;
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
      additionalCodeRepositories: (() { final guardedValue = map['additionalCodeRepositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultCodeRepository: (() { final guardedValue = map['defaultCodeRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebookInstanceArn: (() { final guardedValue = map['notebookInstanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebookInstanceLifecycleConfigName: (() { final guardedValue = map['notebookInstanceLifecycleConfigName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebookInstanceName: (() { final guardedValue = map['notebookInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebookInstanceStatus: (() { final guardedValue = map['notebookInstanceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotebookInstanceStatusEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

