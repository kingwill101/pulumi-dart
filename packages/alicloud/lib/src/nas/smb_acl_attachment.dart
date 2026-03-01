import 'package:pulumi/pulumi.dart' as pulumi;
import 'smb_acl_attachment_args.dart';

/// Provides a Nas Smb Acl resource.
///
/// Alibaba Cloud SMB protocol file storage service supports user authentication based on AD domain system and permission access control at the file system level. Connecting and accessing the SMB file system as a domain user can implement the requirements for access control at the file and directory level in the SMB protocol file system. The current Alibaba Cloud SMB protocol file storage service does not support multi-user file and directory-level permission access control, and only provides file system-level authentication and access based on the whitelist mechanism that supports cloud accounts and source IP permission groups control.
/// > **NOTE:** Available in 1.186.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.nas.getZones({
///     fileSystemType: "standard",
/// });
/// const exampleFileSystem = new alicloud.nas.FileSystem("example", {
///     protocolType: "SMB",
///     storageType: "Capacity",
///     description: "terraform-example",
///     encryptType: 0,
///     fileSystemType: "standard",
///     zoneId: example.then(example => example.zones?.[0]?.zoneId),
/// });
/// const exampleSmbAclAttachment = new alicloud.nas.SmbAclAttachment("example", {
///     fileSystemId: exampleFileSystem.id,
///     keytab: "BQIAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAQAIqIx6v7p11oUAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAwAIqIx6v7p11oUAAABPAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAFwAQnQZWB3RAPHU7PMIJyBWePAAAAF8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQASACAGJ7F0s+bcBjf6jD5HlvlRLmPSOW+qDZe0Qk0lQcf8WwAAAE8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQARABDdFmanrSIatnDDhoOXYadj",
///     keytabMd5: "E3CCF7E2416DF04FA958AA4513EA29E8",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.nas.get_zones(file_system_type="standard")
/// example_file_system = alicloud.nas.FileSystem("example",
///     protocol_type="SMB",
///     storage_type="Capacity",
///     description="terraform-example",
///     encrypt_type=0,
///     file_system_type="standard",
///     zone_id=example.zones[0].zone_id)
/// example_smb_acl_attachment = alicloud.nas.SmbAclAttachment("example",
///     file_system_id=example_file_system.id,
///     keytab="BQIAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAQAIqIx6v7p11oUAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAwAIqIx6v7p11oUAAABPAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAFwAQnQZWB3RAPHU7PMIJyBWePAAAAF8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQASACAGJ7F0s+bcBjf6jD5HlvlRLmPSOW+qDZe0Qk0lQcf8WwAAAE8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQARABDdFmanrSIatnDDhoOXYadj",
///     keytab_md5="E3CCF7E2416DF04FA958AA4513EA29E8")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Nas.GetZones.Invoke(new()
///     {
///         FileSystemType = "standard",
///     });
///
///     var exampleFileSystem = new AliCloud.Nas.FileSystem("example", new()
///     {
///         ProtocolType = "SMB",
///         StorageType = "Capacity",
///         Description = "terraform-example",
///         EncryptType = 0,
///         FileSystemType = "standard",
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneId),
///     });
///
///     var exampleSmbAclAttachment = new AliCloud.Nas.SmbAclAttachment("example", new()
///     {
///         FileSystemId = exampleFileSystem.Id,
///         Keytab = "BQIAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAQAIqIx6v7p11oUAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAwAIqIx6v7p11oUAAABPAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAFwAQnQZWB3RAPHU7PMIJyBWePAAAAF8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQASACAGJ7F0s+bcBjf6jD5HlvlRLmPSOW+qDZe0Qk0lQcf8WwAAAE8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQARABDdFmanrSIatnDDhoOXYadj",
///         KeytabMd5 = "E3CCF7E2416DF04FA958AA4513EA29E8",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := nas.GetZones(ctx, &nas.GetZonesArgs{
/// 			FileSystemType: pulumi.StringRef("standard"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFileSystem, err := nas.NewFileSystem(ctx, "example", &nas.FileSystemArgs{
/// 			ProtocolType:   pulumi.String("SMB"),
/// 			StorageType:    pulumi.String("Capacity"),
/// 			Description:    pulumi.String("terraform-example"),
/// 			EncryptType:    pulumi.Int(0),
/// 			FileSystemType: pulumi.String("standard"),
/// 			ZoneId:         pulumi.String(example.Zones[0].ZoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewSmbAclAttachment(ctx, "example", &nas.SmbAclAttachmentArgs{
/// 			FileSystemId: exampleFileSystem.ID(),
/// 			Keytab:       pulumi.String("BQIAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAQAIqIx6v7p11oUAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAwAIqIx6v7p11oUAAABPAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAFwAQnQZWB3RAPHU7PMIJyBWePAAAAF8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQASACAGJ7F0s+bcBjf6jD5HlvlRLmPSOW+qDZe0Qk0lQcf8WwAAAE8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQARABDdFmanrSIatnDDhoOXYadj"),
/// 			KeytabMd5:    pulumi.String("E3CCF7E2416DF04FA958AA4513EA29E8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.nas.SmbAclAttachment;
/// import com.pulumi.alicloud.nas.SmbAclAttachmentArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = NasFunctions.getZones(GetZonesArgs.builder()
///             .fileSystemType("standard")
///             .build());
///
///         var exampleFileSystem = new FileSystem("exampleFileSystem", FileSystemArgs.builder()
///             .protocolType("SMB")
///             .storageType("Capacity")
///             .description("terraform-example")
///             .encryptType(0)
///             .fileSystemType("standard")
///             .zoneId(example.zones()[0].zoneId())
///             .build());
///
///         var exampleSmbAclAttachment = new SmbAclAttachment("exampleSmbAclAttachment", SmbAclAttachmentArgs.builder()
///             .fileSystemId(exampleFileSystem.id())
///             .keytab("BQIAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAQAIqIx6v7p11oUAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAwAIqIx6v7p11oUAAABPAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAFwAQnQZWB3RAPHU7PMIJyBWePAAAAF8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQASACAGJ7F0s+bcBjf6jD5HlvlRLmPSOW+qDZe0Qk0lQcf8WwAAAE8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQARABDdFmanrSIatnDDhoOXYadj")
///             .keytabMd5("E3CCF7E2416DF04FA958AA4513EA29E8")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFileSystem:
///     type: alicloud:nas:FileSystem
///     name: example
///     properties:
///       protocolType: SMB
///       storageType: Capacity
///       description: terraform-example
///       encryptType: '0'
///       fileSystemType: standard
///       zoneId: ${example.zones[0].zoneId}
///   exampleSmbAclAttachment:
///     type: alicloud:nas:SmbAclAttachment
///     name: example
///     properties:
///       fileSystemId: ${exampleFileSystem.id}
///       keytab: BQIAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAQAIqIx6v7p11oUAAABHAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAAwAIqIx6v7p11oUAAABPAAIADUFMSUFEVEVTVC5DT00ABGNpZnMAGXNtYnNlcnZlcjI0LmFsaWFkdGVzdC5jb20AAAABAAAAAAEAFwAQnQZWB3RAPHU7PMIJyBWePAAAAF8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQASACAGJ7F0s+bcBjf6jD5HlvlRLmPSOW+qDZe0Qk0lQcf8WwAAAE8AAgANQUxJQURURVNULkNPTQAEY2lmcwAZc21ic2VydmVyMjQuYWxpYWR0ZXN0LmNvbQAAAAEAAAAAAQARABDdFmanrSIatnDDhoOXYadj
///       keytabMd5: E3CCF7E2416DF04FA958AA4513EA29E8
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:nas:getZones
///       arguments:
///         fileSystemType: standard
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class SmbAclAttachment extends pulumi.CustomResource {
  /// The method that is used to authenticate network identities.
  late final pulumi.Output<String> authMethod;
  /// Specifies whether to allow anonymous access. Valid values:
  /// true: The file system allows anonymous access.
  /// false: The file system denies anonymous access. Default value: false.
  late final pulumi.Output<bool?> enableAnonymousAccess;
  /// Specifies whether to enable the ACL feature.
  /// true: enables the ACL feature.
  /// false: disables the ACL feature.
  late final pulumi.Output<String> enabled;
  /// Specifies whether to enable encryption in transit. Valid values:
  /// true: enables encryption in transit.
  /// false: disables encryption in transit. Default value: false.
  late final pulumi.Output<bool?> encryptData;
  /// The ID of the file system.
  late final pulumi.Output<String> fileSystemId;
  /// The home directory of each user. Each user-specific home directory must meet the following requirements:
  /// Each segment starts with a forward slash (/) or a backslash (\).
  /// Each segment does not contain the following special characters: <>":?*.
  /// Each segment is 0 to 255 characters in length.
  /// The total length is 0 to 32,767 characters.
  /// For example, if you create a user named A and the home directory is /home, the file system automatically creates a directory named /home/A when User A logs on to the file system. If the /home/A directory already exists, the file system does not create the directory.
  late final pulumi.Output<String?> homeDirPath;
  /// The string that is generated after the system encodes the keytab file by using Base64.
  late final pulumi.Output<String> keytab;
  /// RThe string that is generated after the system encodes the keytab file by using MD5.
  late final pulumi.Output<String> keytabMd5;
  /// Specifies whether to deny access from non-encrypted clients. Valid values:
  /// true: The file system denies access from non-encrypted clients.
  /// false: The file system allows access from non-encrypted clients. Default value: false.
  late final pulumi.Output<bool?> rejectUnencryptedAccess;
  /// The ID of a super admin. The ID must meet the following requirements:
  /// The ID starts with S and does not contain letters except S.
  /// The ID contains at least three hyphens (-) as delimiters.
  /// Example: S-1-5-22 and S-1-5-22-23.
  late final pulumi.Output<String?> superAdminSid;

  /// Creates a new [SmbAclAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SmbAclAttachment]. {@macro pulumi_nas_smb_acl_attachment_smb_acl_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SmbAclAttachment(
    String name, {
    SmbAclAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/smbAclAttachment:SmbAclAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authMethod = registerOutput<String>('authMethod');
    this.enableAnonymousAccess = registerOutput<bool?>('enableAnonymousAccess');
    this.enabled = registerOutput<String>('enabled');
    this.encryptData = registerOutput<bool?>('encryptData');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.homeDirPath = registerOutput<String?>('homeDirPath');
    this.keytab = registerOutput<String>('keytab');
    this.keytabMd5 = registerOutput<String>('keytabMd5');
    this.rejectUnencryptedAccess = registerOutput<bool?>('rejectUnencryptedAccess');
    this.superAdminSid = registerOutput<String?>('superAdminSid');
  }
}
