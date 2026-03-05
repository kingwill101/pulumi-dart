// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_awsx/awsx.dart' as module_awsx;
import 'package:pulumi_awsx/cloudtrail.dart' as module_cloudtrail;
import 'package:pulumi_awsx/ec2.dart' as module_ec2;
import 'package:pulumi_awsx/ecr.dart' as module_ecr;
import 'package:pulumi_awsx/ecs.dart' as module_ecs;
import 'package:pulumi_awsx/lb.dart' as module_lb;
import 'package:pulumi_awsx/providers.dart' as module_providers;

final awsx = _AwsxModuleNamespace();
final cloudtrail = _CloudtrailModuleNamespace();
final ec2 = _Ec2ModuleNamespace();
final ecr = _EcrModuleNamespace();
final ecs = _EcsModuleNamespace();
final lb = _LbModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _AwsxModuleNamespace {
  _AwsxModuleNamespace();
  final Bucket = module_awsx.Bucket.new;
  final BucketArgs = module_awsx.Bucket.new;
  final DefaultBucket = module_awsx.DefaultBucket.new;
  final DefaultBucketArgs = module_awsx.DefaultBucket.new;
  final DefaultLogGroup = module_awsx.DefaultLogGroup.new;
  final DefaultLogGroupArgs = module_awsx.DefaultLogGroup.new;
  final DefaultRoleWithPolicy = module_awsx.DefaultRoleWithPolicy.new;
  final DefaultRoleWithPolicyArgs = module_awsx.DefaultRoleWithPolicy.new;
  final DefaultSecurityGroup = module_awsx.DefaultSecurityGroup.new;
  final DefaultSecurityGroupArgs = module_awsx.DefaultSecurityGroup.new;
  final ExistingBucket = module_awsx.ExistingBucket.new;
  final ExistingBucketArgs = module_awsx.ExistingBucket.new;
  final ExistingLogGroup = module_awsx.ExistingLogGroup.new;
  final ExistingLogGroupArgs = module_awsx.ExistingLogGroup.new;
  final LogGroup = module_awsx.LogGroup.new;
  final LogGroupArgs = module_awsx.LogGroup.new;
  final OptionalLogGroup = module_awsx.OptionalLogGroup.new;
  final OptionalLogGroupArgs = module_awsx.OptionalLogGroup.new;
  final RequiredBucket = module_awsx.RequiredBucket.new;
  final RequiredBucketArgs = module_awsx.RequiredBucket.new;
  final RequiredLogGroup = module_awsx.RequiredLogGroup.new;
  final RequiredLogGroupArgs = module_awsx.RequiredLogGroup.new;
  final RoleWithPolicy = module_awsx.RoleWithPolicy.new;
  final RoleWithPolicyArgs = module_awsx.RoleWithPolicy.new;
  final SecurityGroup = module_awsx.SecurityGroup.new;
  final SecurityGroupArgs = module_awsx.SecurityGroup.new;
}

class _CloudtrailModuleNamespace {
  _CloudtrailModuleNamespace();
  final LogGroup = module_cloudtrail.LogGroup.new;
  final LogGroupArgs = module_cloudtrail.LogGroup.new;
  final Trail = module_cloudtrail.Trail.new;
  final TrailArgs = module_cloudtrail.TrailArgs.new;
}

class _Ec2ModuleNamespace {
  _Ec2ModuleNamespace();
  final DefaultVpc = module_ec2.DefaultVpc.new;
  final GetDefaultVpcResult = module_ec2.GetDefaultVpcResult.new;
  final GetDefaultVpcResultArgs = module_ec2.GetDefaultVpcResult.new;
  final NatGatewayConfiguration = module_ec2.NatGatewayConfiguration.new;
  final NatGatewayConfigurationArgs = module_ec2.NatGatewayConfiguration.new;
  final NatGatewayStrategy = module_ec2.NatGatewayStrategy.values;
  final ResolvedSubnetSpec = module_ec2.ResolvedSubnetSpec.new;
  final ResolvedSubnetSpecArgs = module_ec2.ResolvedSubnetSpec.new;
  final SubnetAllocationStrategy = module_ec2.SubnetAllocationStrategy.values;
  final SubnetSpec = module_ec2.SubnetSpec.new;
  final SubnetSpecArgs = module_ec2.SubnetSpec.new;
  final SubnetType = module_ec2.SubnetType.values;
  final Vpc = module_ec2.Vpc.new;
  final VpcArgs = module_ec2.VpcArgs.new;
  final VpcEndpointSpec = module_ec2.VpcEndpointSpec.new;
  final VpcEndpointSpecArgs = module_ec2.VpcEndpointSpec.new;
  final getDefaultVpc = module_ec2.getDefaultVpc;
}

class _EcrModuleNamespace {
  _EcrModuleNamespace();
  final BuilderVersion = module_ecr.BuilderVersion.values;
  final DockerBuild = module_ecr.DockerBuild.new;
  final DockerBuildArgs = module_ecr.DockerBuild.new;
  final Image = module_ecr.Image.new;
  final ImageArgs = module_ecr.ImageArgs.new;
  final LifecyclePolicy = module_ecr.LifecyclePolicy.new;
  final LifecyclePolicyArgs = module_ecr.LifecyclePolicy.new;
  final LifecyclePolicyRule = module_ecr.LifecyclePolicyRule.new;
  final LifecyclePolicyRuleArgs = module_ecr.LifecyclePolicyRule.new;
  final LifecycleTagStatus = module_ecr.LifecycleTagStatus.values;
  final RegistryImage = module_ecr.RegistryImage.new;
  final RegistryImageArgs = module_ecr.RegistryImageArgs.new;
  final Repository = module_ecr.Repository.new;
  final RepositoryArgs = module_ecr.RepositoryArgs.new;
}

class _EcsModuleNamespace {
  _EcsModuleNamespace();
  final EC2Service = module_ecs.EC2Service.new;
  final EC2ServiceArgs = module_ecs.EC2ServiceArgs.new;
  final EC2ServiceTaskDefinition = module_ecs.EC2ServiceTaskDefinition.new;
  final EC2ServiceTaskDefinitionArgs = module_ecs.EC2ServiceTaskDefinition.new;
  final EC2TaskDefinition = module_ecs.EC2TaskDefinition.new;
  final EC2TaskDefinitionArgs = module_ecs.EC2TaskDefinitionArgs.new;
  final FargateService = module_ecs.FargateService.new;
  final FargateServiceArgs = module_ecs.FargateServiceArgs.new;
  final FargateServiceTaskDefinition = module_ecs.FargateServiceTaskDefinition.new;
  final FargateServiceTaskDefinitionArgs = module_ecs.FargateServiceTaskDefinition.new;
  final FargateTaskDefinition = module_ecs.FargateTaskDefinition.new;
  final FargateTaskDefinitionArgs = module_ecs.FargateTaskDefinitionArgs.new;
  final TaskDefinitionContainerDefinition = module_ecs.TaskDefinitionContainerDefinition.new;
  final TaskDefinitionContainerDefinitionArgs = module_ecs.TaskDefinitionContainerDefinition.new;
  final TaskDefinitionContainerDependency = module_ecs.TaskDefinitionContainerDependency.new;
  final TaskDefinitionContainerDependencyArgs = module_ecs.TaskDefinitionContainerDependency.new;
  final TaskDefinitionDevice = module_ecs.TaskDefinitionDevice.new;
  final TaskDefinitionDeviceArgs = module_ecs.TaskDefinitionDevice.new;
  final TaskDefinitionEnvironmentFile = module_ecs.TaskDefinitionEnvironmentFile.new;
  final TaskDefinitionEnvironmentFileArgs = module_ecs.TaskDefinitionEnvironmentFile.new;
  final TaskDefinitionFirelensConfiguration = module_ecs.TaskDefinitionFirelensConfiguration.new;
  final TaskDefinitionFirelensConfigurationArgs = module_ecs.TaskDefinitionFirelensConfiguration.new;
  final TaskDefinitionHealthCheck = module_ecs.TaskDefinitionHealthCheck.new;
  final TaskDefinitionHealthCheckArgs = module_ecs.TaskDefinitionHealthCheck.new;
  final TaskDefinitionHostEntry = module_ecs.TaskDefinitionHostEntry.new;
  final TaskDefinitionHostEntryArgs = module_ecs.TaskDefinitionHostEntry.new;
  final TaskDefinitionKernelCapabilities = module_ecs.TaskDefinitionKernelCapabilities.new;
  final TaskDefinitionKernelCapabilitiesArgs = module_ecs.TaskDefinitionKernelCapabilities.new;
  final TaskDefinitionKeyValuePair = module_ecs.TaskDefinitionKeyValuePair.new;
  final TaskDefinitionKeyValuePairArgs = module_ecs.TaskDefinitionKeyValuePair.new;
  final TaskDefinitionLinuxParameters = module_ecs.TaskDefinitionLinuxParameters.new;
  final TaskDefinitionLinuxParametersArgs = module_ecs.TaskDefinitionLinuxParameters.new;
  final TaskDefinitionLogConfiguration = module_ecs.TaskDefinitionLogConfiguration.new;
  final TaskDefinitionLogConfigurationArgs = module_ecs.TaskDefinitionLogConfiguration.new;
  final TaskDefinitionMountPoint = module_ecs.TaskDefinitionMountPoint.new;
  final TaskDefinitionMountPointArgs = module_ecs.TaskDefinitionMountPoint.new;
  final TaskDefinitionPortMapping = module_ecs.TaskDefinitionPortMapping.new;
  final TaskDefinitionPortMappingAppProtocol = module_ecs.TaskDefinitionPortMappingAppProtocol.values;
  final TaskDefinitionPortMappingArgs = module_ecs.TaskDefinitionPortMapping.new;
  final TaskDefinitionRepositoryCredentials = module_ecs.TaskDefinitionRepositoryCredentials.new;
  final TaskDefinitionRepositoryCredentialsArgs = module_ecs.TaskDefinitionRepositoryCredentials.new;
  final TaskDefinitionResourceRequirement = module_ecs.TaskDefinitionResourceRequirement.new;
  final TaskDefinitionResourceRequirementArgs = module_ecs.TaskDefinitionResourceRequirement.new;
  final TaskDefinitionSecret = module_ecs.TaskDefinitionSecret.new;
  final TaskDefinitionSecretArgs = module_ecs.TaskDefinitionSecret.new;
  final TaskDefinitionSystemControl = module_ecs.TaskDefinitionSystemControl.new;
  final TaskDefinitionSystemControlArgs = module_ecs.TaskDefinitionSystemControl.new;
  final TaskDefinitionTmpfs = module_ecs.TaskDefinitionTmpfs.new;
  final TaskDefinitionTmpfsArgs = module_ecs.TaskDefinitionTmpfs.new;
  final TaskDefinitionUlimit = module_ecs.TaskDefinitionUlimit.new;
  final TaskDefinitionUlimitArgs = module_ecs.TaskDefinitionUlimit.new;
  final TaskDefinitionVolumeFrom = module_ecs.TaskDefinitionVolumeFrom.new;
  final TaskDefinitionVolumeFromArgs = module_ecs.TaskDefinitionVolumeFrom.new;
}

class _LbModuleNamespace {
  _LbModuleNamespace();
  final ApplicationLoadBalancer = module_lb.ApplicationLoadBalancer.new;
  final ApplicationLoadBalancerArgs = module_lb.ApplicationLoadBalancerArgs.new;
  final Listener = module_lb.Listener.new;
  final ListenerArgs = module_lb.Listener.new;
  final NetworkLoadBalancer = module_lb.NetworkLoadBalancer.new;
  final NetworkLoadBalancerArgs = module_lb.NetworkLoadBalancerArgs.new;
  final TargetGroup = module_lb.TargetGroup.new;
  final TargetGroupArgs = module_lb.TargetGroup.new;
  final TargetGroupAttachment = module_lb.TargetGroupAttachment.new;
  final TargetGroupAttachmentArgs = module_lb.TargetGroupAttachmentArgs.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Awsx = module_providers.ProviderProvider.new;
}
