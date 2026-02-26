import 'package:pulumi/pulumi.dart';
import '../file_cache_data_repository_association/file_cache_data_repository_association.dart';
import '../file_cache_lustre_configuration/file_cache_lustre_configuration.dart';
import 'file_cache_args.dart';

/// Resource for managing an Amazon File Cache cache.
/// See the [Create File Cache](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileCache.html) for more information.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.FileCache("example", {
/// dataRepositoryAssociations: [{
/// dataRepositoryPath: "nfs://filer.domain.com",
/// dataRepositorySubdirectories: [
/// "test",
/// "test2",
/// ],
/// fileCachePath: "/ns1",
/// nfs: [{
/// dnsIps: [
/// "192.168.0.1",
/// "192.168.0.2",
/// ],
/// version: "NFS3",
/// }],
/// }],
/// fileCacheType: "LUSTRE",
/// fileCacheTypeVersion: "2.12",
/// lustreConfigurations: [{
/// deploymentType: "CACHE_1",
/// metadataConfigurations: [{
/// storageCapacity: 2400,
/// }],
/// perUnitStorageThroughput: 1000,
/// weeklyMaintenanceStartTime: "2:05:00",
/// }],
/// subnetIds: [test1.id],
/// storageCapacity: 1200,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.FileCache("example",
/// data_repository_associations=[{
/// "data_repository_path": "nfs://filer.domain.com",
/// "data_repository_subdirectories": [
/// "test",
/// "test2",
/// ],
/// "file_cache_path": "/ns1",
/// "nfs": [{
/// "dns_ips": [
/// "192.168.0.1",
/// "192.168.0.2",
/// ],
/// "version": "NFS3",
/// }],
/// }],
/// file_cache_type="LUSTRE",
/// file_cache_type_version="2.12",
/// lustre_configurations=[{
/// "deployment_type": "CACHE_1",
/// "metadata_configurations": [{
/// "storage_capacity": 2400,
/// }],
/// "per_unit_storage_throughput": 1000,
/// "weekly_maintenance_start_time": "2:05:00",
/// }],
/// subnet_ids=[test1["id"]],
/// storage_capacity=1200)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Fsx.FileCache("example", new()
/// {
/// DataRepositoryAssociations = new[]
/// {
/// new Aws.Fsx.Inputs.FileCacheDataRepositoryAssociationArgs
/// {
/// DataRepositoryPath = "nfs://filer.domain.com",
/// DataRepositorySubdirectories = new[]
/// {
/// "test",
/// "test2",
/// },
/// FileCachePath = "/ns1",
/// Nfs = new[]
/// {
/// new Aws.Fsx.Inputs.FileCacheDataRepositoryAssociationNfArgs
/// {
/// DnsIps = new[]
/// {
/// "192.168.0.1",
/// "192.168.0.2",
/// },
/// Version = "NFS3",
/// },
/// },
/// },
/// },
/// FileCacheType = "LUSTRE",
/// FileCacheTypeVersion = "2.12",
/// LustreConfigurations = new[]
/// {
/// new Aws.Fsx.Inputs.FileCacheLustreConfigurationArgs
/// {
/// DeploymentType = "CACHE_1",
/// MetadataConfigurations = new[]
/// {
/// new Aws.Fsx.Inputs.FileCacheLustreConfigurationMetadataConfigurationArgs
/// {
/// StorageCapacity = 2400,
/// },
/// },
/// PerUnitStorageThroughput = 1000,
/// WeeklyMaintenanceStartTime = "2:05:00",
/// },
/// },
/// SubnetIds = new[]
/// {
/// test1.Id,
/// },
/// StorageCapacity = 1200,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := fsx.NewFileCache(ctx, "example", &fsx.FileCacheArgs{
/// DataRepositoryAssociations: fsx.FileCacheDataRepositoryAssociationArray{
/// &fsx.FileCacheDataRepositoryAssociationArgs{
/// DataRepositoryPath: pulumi.String("nfs://filer.domain.com"),
/// DataRepositorySubdirectories: pulumi.StringArray{
/// pulumi.String("test"),
/// pulumi.String("test2"),
/// },
/// FileCachePath: pulumi.String("/ns1"),
/// Nfs: fsx.FileCacheDataRepositoryAssociationNfArray{
/// &fsx.FileCacheDataRepositoryAssociationNfArgs{
/// DnsIps: pulumi.StringArray{
/// pulumi.String("192.168.0.1"),
/// pulumi.String("192.168.0.2"),
/// },
/// Version: pulumi.String("NFS3"),
/// },
/// },
/// },
/// },
/// FileCacheType:        pulumi.String("LUSTRE"),
/// FileCacheTypeVersion: pulumi.String("2.12"),
/// LustreConfigurations: fsx.FileCacheLustreConfigurationArray{
/// &fsx.FileCacheLustreConfigurationArgs{
/// DeploymentType: pulumi.String("CACHE_1"),
/// MetadataConfigurations: fsx.FileCacheLustreConfigurationMetadataConfigurationArray{
/// &fsx.FileCacheLustreConfigurationMetadataConfigurationArgs{
/// StorageCapacity: pulumi.Int(2400),
/// },
/// },
/// PerUnitStorageThroughput:   pulumi.Int(1000),
/// WeeklyMaintenanceStartTime: pulumi.String("2:05:00"),
/// },
/// },
/// SubnetIds: pulumi.StringArray{
/// test1.Id,
/// },
/// StorageCapacity: pulumi.Int(1200),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.FileCache;
/// import com.pulumi.aws.fsx.FileCacheArgs;
/// import com.pulumi.aws.fsx.inputs.FileCacheDataRepositoryAssociationArgs;
/// import com.pulumi.aws.fsx.inputs.FileCacheLustreConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new FileCache("example", FileCacheArgs.builder()
/// .dataRepositoryAssociations(FileCacheDataRepositoryAssociationArgs.builder()
/// .dataRepositoryPath("nfs://filer.domain.com")
/// .dataRepositorySubdirectories(
/// "test",
/// "test2")
/// .fileCachePath("/ns1")
/// .nfs(FileCacheDataRepositoryAssociationNfArgs.builder()
/// .dnsIps(
/// "192.168.0.1",
/// "192.168.0.2")
/// .version("NFS3")
/// .build())
/// .build())
/// .fileCacheType("LUSTRE")
/// .fileCacheTypeVersion("2.12")
/// .lustreConfigurations(FileCacheLustreConfigurationArgs.builder()
/// .deploymentType("CACHE_1")
/// .metadataConfigurations(FileCacheLustreConfigurationMetadataConfigurationArgs.builder()
/// .storageCapacity(2400)
/// .build())
/// .perUnitStorageThroughput(1000)
/// .weeklyMaintenanceStartTime("2:05:00")
/// .build())
/// .subnetIds(test1.id())
/// .storageCapacity(1200)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:fsx:FileCache
/// properties:
/// dataRepositoryAssociations:
/// - dataRepositoryPath: nfs://filer.domain.com
/// dataRepositorySubdirectories:
/// - test
/// - test2
/// fileCachePath: /ns1
/// nfs:
/// - dnsIps:
/// - 192.168.0.1
/// - 192.168.0.2
/// version: NFS3
/// fileCacheType: LUSTRE
/// fileCacheTypeVersion: '2.12'
/// lustreConfigurations:
/// - deploymentType: CACHE_1
/// metadataConfigurations:
/// - storageCapacity: 2400
/// perUnitStorageThroughput: 1000
/// weeklyMaintenanceStartTime: 2:05:00
/// subnetIds:
/// - ${test1.id}
/// storageCapacity: 1200
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Amazon File Cache cache using the resource <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/fileCache:FileCache example fc-8012925589
/// ```
class FileCache extends CustomResource {
  /// The Amazon Resource Name (ARN) for the resource.
  late final Output<String> arn;

  /// A boolean flag indicating whether tags for the cache should be copied to data repository associations. This value defaults to false.
  late final Output<bool?> copyTagsToDataRepositoryAssociations;

  /// A list of IDs of data repository associations that are associated with this cache.
  late final Output<List<String>> dataRepositoryAssociationIds;

  /// See the <span pulumi-lang-nodejs="`dataRepositoryAssociation`" pulumi-lang-dotnet="`DataRepositoryAssociation`" pulumi-lang-go="`dataRepositoryAssociation`" pulumi-lang-python="`data_repository_association`" pulumi-lang-yaml="`dataRepositoryAssociation`" pulumi-lang-java="`dataRepositoryAssociation`">`data_repository_association`</span> configuration block. Max of 8.
  /// A list of up to 8 configurations for data repository associations (DRAs) to be created during the cache creation. The DRAs link the cache to either an Amazon S3 data repository or a Network File System (NFS) data repository that supports the NFSv3 protocol. The DRA configurations must meet the following requirements: 1) All configurations on the list must be of the same data repository type, either all S3 or all NFS. A cache can't link to different data repository types at the same time. 2) An NFS DRA must link to an NFS file system that supports the NFSv3 protocol. DRA automatic import and automatic export is not supported.
  late final Output<List<FileCacheDataRepositoryAssociation>?>
      dataRepositoryAssociations;

  /// The Domain Name System (DNS) name for the cache.
  late final Output<String> dnsName;

  /// The system-generated, unique ID of the cache.
  late final Output<String> fileCacheId;

  /// The type of cache that you're creating. The only supported value is `LUSTRE`.
  late final Output<String> fileCacheType;

  /// The version for the type of cache that you're creating. The only supported value is `2.12`.
  late final Output<String> fileCacheTypeVersion;

  /// Specifies the ID of the AWS Key Management Service (AWS KMS) key to use for encrypting data on an Amazon File Cache. If a KmsKeyId isn't specified, the Amazon FSx-managed AWS KMS key for your account is used.
  late final Output<String> kmsKeyId;

  /// See the <span pulumi-lang-nodejs="`lustreConfiguration`" pulumi-lang-dotnet="`LustreConfiguration`" pulumi-lang-go="`lustreConfiguration`" pulumi-lang-python="`lustre_configuration`" pulumi-lang-yaml="`lustreConfiguration`" pulumi-lang-java="`lustreConfiguration`">`lustre_configuration`</span> block. Required when <span pulumi-lang-nodejs="`fileCacheType`" pulumi-lang-dotnet="`FileCacheType`" pulumi-lang-go="`fileCacheType`" pulumi-lang-python="`file_cache_type`" pulumi-lang-yaml="`fileCacheType`" pulumi-lang-java="`fileCacheType`">`file_cache_type`</span> is `LUSTRE`.
  late final Output<List<FileCacheLustreConfiguration>?> lustreConfigurations;

  /// A list of network interface IDs.
  late final Output<List<String>> networkInterfaceIds;
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of IDs specifying the security groups to apply to all network interfaces created for Amazon File Cache access.
  late final Output<List<String>?> securityGroupIds;

  /// The storage capacity of the cache in gibibytes (GiB). Valid values are <span pulumi-lang-nodejs="`1200`" pulumi-lang-dotnet="`1200`" pulumi-lang-go="`1200`" pulumi-lang-python="`1200`" pulumi-lang-yaml="`1200`" pulumi-lang-java="`1200`">`1200`</span> GiB, <span pulumi-lang-nodejs="`2400`" pulumi-lang-dotnet="`2400`" pulumi-lang-go="`2400`" pulumi-lang-python="`2400`" pulumi-lang-yaml="`2400`" pulumi-lang-java="`2400`">`2400`</span> GiB, and increments of <span pulumi-lang-nodejs="`2400`" pulumi-lang-dotnet="`2400`" pulumi-lang-go="`2400`" pulumi-lang-python="`2400`" pulumi-lang-yaml="`2400`" pulumi-lang-java="`2400`">`2400`</span> GiB.
  late final Output<int> storageCapacity;

  /// A list of subnet IDs that the cache will be accessible from. You can specify only one subnet ID.
  ///
  /// The following arguments are optional:
  late final Output<List<String>> subnetIds;

  /// A map of tags to assign to the file cache. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The ID of your virtual private cloud (VPC).
  late final Output<String> vpcId;

  FileCache(
    String name, {
    FileCacheArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fsx/fileCache:FileCache',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.copyTagsToDataRepositoryAssociations = Output.createUnknown<bool?>();
    this.dataRepositoryAssociationIds = Output.createUnknown<List<String>>();
    this.dataRepositoryAssociations =
        Output.createUnknown<List<FileCacheDataRepositoryAssociation>?>();
    this.dnsName = Output.createUnknown<String>();
    this.fileCacheId = Output.createUnknown<String>();
    this.fileCacheType = Output.createUnknown<String>();
    this.fileCacheTypeVersion = Output.createUnknown<String>();
    this.kmsKeyId = Output.createUnknown<String>();
    this.lustreConfigurations =
        Output.createUnknown<List<FileCacheLustreConfiguration>?>();
    this.networkInterfaceIds = Output.createUnknown<List<String>>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.securityGroupIds = Output.createUnknown<List<String>?>();
    this.storageCapacity = Output.createUnknown<int>();
    this.subnetIds = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
