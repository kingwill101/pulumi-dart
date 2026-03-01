// ignore_for_file: unused_element, unnecessary_cast

import 'file_system_type_enum_value_response.dart';

/// Definition of ProjectFileSystemLocation
class ProjectFileSystemLocationResponse {
  /// <p>The name used to access a file system created by Amazon EFS. CodeBuild creates an environment variable by appending the <code>identifier</code> in all capital letters to <code>CODEBUILD_</code>. For example, if you specify <code>my_efs</code> for <code>identifier</code>, a new environment variable is create named <code>CODEBUILD_MY_EFS</code>. </p> <p> The <code>identifier</code> is used to mount your file system. </p>
  final String? identifier;
  /// <p>A string that specifies the location of the file system created by Amazon EFS. Its format is <code>efs-dns-name:/directory-path</code>. You can find the DNS name of file system when you view it in the Amazon EFS console. The directory path is a path to a directory in the file system that CodeBuild mounts. For example, if the DNS name of a file system is <code>fs-abcd1234.efs.us-west-2.amazonaws.com</code>, and its mount directory is <code>my-efs-mount-directory</code>, then the <code>location</code> is <code>fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory</code>. </p> <p>The directory path in the format <code>efs-dns-name:/directory-path</code> is optional. If you do not specify a directory path, the location is only the DNS name and CodeBuild mounts the entire file system. </p>
  final String? location;
  /// <p> The mount options for a file system created by Amazon EFS. The default mount options used by CodeBuild are <code>nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2</code>. For more information, see <a href='https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html'>Recommended NFS Mount Options</a>. </p>
  final String? mountOptions;
  /// <p>The location in the container where you mount the file system. </p>
  final String? mountPoint;
  /// <p> The type of the file system. The one supported type is <code>EFS</code>. </p>
  final FileSystemTypeEnumValueResponse? type;

  /// Creates a new [ProjectFileSystemLocationResponse].
  /// [identifier] <p>The name used to access a file system created by Amazon EFS. CodeBuild creates an environment variable by appending the <code>identifier</code> in all capital letters to <code>CODEBUILD_</code>. For example, if you specify <code>my_efs</code> for <code>identifier</code>, a new environment variable is create named <code>CODEBUILD_MY_EFS</code>. </p> <p> The <code>identifier</code> is used to mount your file system. </p>
  /// [location] <p>A string that specifies the location of the file system created by Amazon EFS. Its format is <code>efs-dns-name:/directory-path</code>. You can find the DNS name of file system when you view it in the Amazon EFS console. The directory path is a path to a directory in the file system that CodeBuild mounts. For example, if the DNS name of a file system is <code>fs-abcd1234.efs.us-west-2.amazonaws.com</code>, and its mount directory is <code>my-efs-mount-directory</code>, then the <code>location</code> is <code>fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory</code>. </p> <p>The directory path in the format <code>efs-dns-name:/directory-path</code> is optional. If you do not specify a directory path, the location is only the DNS name and CodeBuild mounts the entire file system. </p>
  /// [mountOptions] <p> The mount options for a file system created by Amazon EFS. The default mount options used by CodeBuild are <code>nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2</code>. For more information, see <a href='https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html'>Recommended NFS Mount Options</a>. </p>
  /// [mountPoint] <p>The location in the container where you mount the file system. </p>
  /// [type] <p> The type of the file system. The one supported type is <code>EFS</code>. </p>
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
      'type': ?type == null ? null : type!.toMap(),
    };
  }

  factory ProjectFileSystemLocationResponse.fromMap(Map<String, dynamic> map) {
    return ProjectFileSystemLocationResponse(
      identifier: map['identifier'] == null ? null : map['identifier'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      mountOptions: map['mountOptions'] == null ? null : map['mountOptions'] as String,
      mountPoint: map['mountPoint'] == null ? null : map['mountPoint'] as String,
      type: map['type'] == null ? null : FileSystemTypeEnumValueResponse.fromMap((map['type'] as Map).cast<String, dynamic>()),
    );
  }
}

