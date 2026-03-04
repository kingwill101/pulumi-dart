// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_type_enum_value_response.dart';

/// Definition of ProjectFileSystemLocation
class ProjectFileSystemLocationResponse {
  /// &lt;p&gt;The name used to access a file system created by Amazon EFS. CodeBuild creates an environment variable by appending the &lt;code&gt;identifier&lt;/code&gt; in all capital letters to &lt;code&gt;CODEBUILD_&lt;/code&gt;. For example, if you specify &lt;code&gt;my_efs&lt;/code&gt; for &lt;code&gt;identifier&lt;/code&gt;, a new environment variable is create named &lt;code&gt;CODEBUILD_MY_EFS&lt;/code&gt;. &lt;/p&gt; &lt;p&gt; The &lt;code&gt;identifier&lt;/code&gt; is used to mount your file system. &lt;/p&gt;
  final pulumi.Input<String>? identifier;

  /// &lt;p&gt;A string that specifies the location of the file system created by Amazon EFS. Its format is &lt;code&gt;efs-dns-name:/directory-path&lt;/code&gt;. You can find the DNS name of file system when you view it in the Amazon EFS console. The directory path is a path to a directory in the file system that CodeBuild mounts. For example, if the DNS name of a file system is &lt;code&gt;fs-abcd1234.efs.us-west-2.amazonaws.com&lt;/code&gt;, and its mount directory is &lt;code&gt;my-efs-mount-directory&lt;/code&gt;, then the &lt;code&gt;location&lt;/code&gt; is &lt;code&gt;fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;The directory path in the format &lt;code&gt;efs-dns-name:/directory-path&lt;/code&gt; is optional. If you do not specify a directory path, the location is only the DNS name and CodeBuild mounts the entire file system. &lt;/p&gt;
  final pulumi.Input<String>? location;

  /// &lt;p&gt; The mount options for a file system created by Amazon EFS. The default mount options used by CodeBuild are &lt;code&gt;nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2&lt;/code&gt;. For more information, see &lt;a href='https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html'&gt;Recommended NFS Mount Options&lt;/a&gt;. &lt;/p&gt;
  final pulumi.Input<String>? mountOptions;

  /// &lt;p&gt;The location in the container where you mount the file system. &lt;/p&gt;
  final pulumi.Input<String>? mountPoint;

  /// &lt;p&gt; The type of the file system. The one supported type is &lt;code&gt;EFS&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<FileSystemTypeEnumValueResponse>? type;

  /// Creates a new [ProjectFileSystemLocationResponse].
  /// [identifier] &lt;p&gt;The name used to access a file system created by Amazon EFS. CodeBuild creates an environment variable by appending the &lt;code&gt;identifier&lt;/code&gt; in all capital letters to &lt;code&gt;CODEBUILD_&lt;/code&gt;. For example, if you specify &lt;code&gt;my_efs&lt;/code&gt; for &lt;code&gt;identifier&lt;/code&gt;, a new environment variable is create named &lt;code&gt;CODEBUILD_MY_EFS&lt;/code&gt;. &lt;/p&gt; &lt;p&gt; The &lt;code&gt;identifier&lt;/code&gt; is used to mount your file system. &lt;/p&gt;
  /// [location] &lt;p&gt;A string that specifies the location of the file system created by Amazon EFS. Its format is &lt;code&gt;efs-dns-name:/directory-path&lt;/code&gt;. You can find the DNS name of file system when you view it in the Amazon EFS console. The directory path is a path to a directory in the file system that CodeBuild mounts. For example, if the DNS name of a file system is &lt;code&gt;fs-abcd1234.efs.us-west-2.amazonaws.com&lt;/code&gt;, and its mount directory is &lt;code&gt;my-efs-mount-directory&lt;/code&gt;, then the &lt;code&gt;location&lt;/code&gt; is &lt;code&gt;fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;The directory path in the format &lt;code&gt;efs-dns-name:/directory-path&lt;/code&gt; is optional. If you do not specify a directory path, the location is only the DNS name and CodeBuild mounts the entire file system. &lt;/p&gt;
  /// [mountOptions] &lt;p&gt; The mount options for a file system created by Amazon EFS. The default mount options used by CodeBuild are &lt;code&gt;nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2&lt;/code&gt;. For more information, see &lt;a href='https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html'&gt;Recommended NFS Mount Options&lt;/a&gt;. &lt;/p&gt;
  /// [mountPoint] &lt;p&gt;The location in the container where you mount the file system. &lt;/p&gt;
  /// [type] &lt;p&gt; The type of the file system. The one supported type is &lt;code&gt;EFS&lt;/code&gt;. &lt;/p&gt;
  ProjectFileSystemLocationResponse({
    this.identifier,
    this.location,
    this.mountOptions,
    this.mountPoint,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': ?identifier,
      'location': ?location,
      'mountOptions': ?mountOptions,
      'mountPoint': ?mountPoint,
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            FileSystemTypeEnumValueResponse,
            Map<String, dynamic>
          >(type, (value) => value.toMap()),
    };
  }

  factory ProjectFileSystemLocationResponse.fromMap(Map<String, dynamic> map) {
    return ProjectFileSystemLocationResponse(
      identifier: (() {
        final guardedValue = map['identifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountOptions: (() {
        final guardedValue = map['mountOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountPoint: (() {
        final guardedValue = map['mountPoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileSystemTypeEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
