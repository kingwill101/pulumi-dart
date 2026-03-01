// ignore_for_file: non_constant_identifier_names

library pulumi_awsx;

import 'package:pulumi_awsx/awsx.dart' as _awsx;
import 'package:pulumi_awsx/cloudtrail.dart' as _cloudtrail;
import 'package:pulumi_awsx/ec2.dart' as _ec2;
import 'package:pulumi_awsx/ecr.dart' as _ecr;
import 'package:pulumi_awsx/ecs.dart' as _ecs;
import 'package:pulumi_awsx/lb.dart' as _lb;

final awsx = _AwsxModuleNamespace();
final cloudtrail = _CloudtrailModuleNamespace();
final ec2 = _Ec2ModuleNamespace();
final ecr = _EcrModuleNamespace();
final ecs = _EcsModuleNamespace();
final lb = _LbModuleNamespace();

class _AwsxModuleNamespace {
  _AwsxModuleNamespace();
  final Bucket = _awsx.Bucket.new;
  final BucketArgs = _awsx.Bucket.new;
  final DefaultBucket = _awsx.DefaultBucket.new;
  final DefaultBucketArgs = _awsx.DefaultBucket.new;
  final DefaultLogGroup = _awsx.DefaultLogGroup.new;
  final DefaultLogGroupArgs = _awsx.DefaultLogGroup.new;
  final DefaultRoleWithPolicy = _awsx.DefaultRoleWithPolicy.new;
  final DefaultRoleWithPolicyArgs = _awsx.DefaultRoleWithPolicy.new;
  final DefaultSecurityGroup = _awsx.DefaultSecurityGroup.new;
  final DefaultSecurityGroupArgs = _awsx.DefaultSecurityGroup.new;
  final ExistingBucket = _awsx.ExistingBucket.new;
  final ExistingBucketArgs = _awsx.ExistingBucket.new;
  final ExistingLogGroup = _awsx.ExistingLogGroup.new;
  final ExistingLogGroupArgs = _awsx.ExistingLogGroup.new;
  final LogGroup = _awsx.LogGroup.new;
  final LogGroupArgs = _awsx.LogGroup.new;
  final OptionalLogGroup = _awsx.OptionalLogGroup.new;
  final OptionalLogGroupArgs = _awsx.OptionalLogGroup.new;
  final RequiredBucket = _awsx.RequiredBucket.new;
  final RequiredBucketArgs = _awsx.RequiredBucket.new;
  final RequiredLogGroup = _awsx.RequiredLogGroup.new;
  final RequiredLogGroupArgs = _awsx.RequiredLogGroup.new;
  final RoleWithPolicy = _awsx.RoleWithPolicy.new;
  final RoleWithPolicyArgs = _awsx.RoleWithPolicy.new;
  final SecurityGroup = _awsx.SecurityGroup.new;
  final SecurityGroupArgs = _awsx.SecurityGroup.new;
}

class _CloudtrailModuleNamespace {
  _CloudtrailModuleNamespace();
  final LogGroup = _cloudtrail.LogGroup.new;
  final LogGroupArgs = _cloudtrail.LogGroup.new;
  final Trail = _cloudtrail.Trail.new;
  final TrailArgs = _cloudtrail.TrailArgs.new;
}

class _Ec2ModuleNamespace {
  _Ec2ModuleNamespace();
  final DefaultVpc = _ec2.DefaultVpc.new;
  final GetDefaultVpcResult = _ec2.GetDefaultVpcResult.new;
  final GetDefaultVpcResultArgs = _ec2.GetDefaultVpcResult.new;
  final NatGatewayConfiguration = _ec2.NatGatewayConfiguration.new;
  final NatGatewayConfigurationArgs = _ec2.NatGatewayConfiguration.new;
  final NatGatewayStrategy = _ec2.NatGatewayStrategy.values;
  final ResolvedSubnetSpec = _ec2.ResolvedSubnetSpec.new;
  final ResolvedSubnetSpecArgs = _ec2.ResolvedSubnetSpec.new;
  final SubnetAllocationStrategy = _ec2.SubnetAllocationStrategy.values;
  final SubnetSpec = _ec2.SubnetSpec.new;
  final SubnetSpecArgs = _ec2.SubnetSpec.new;
  final SubnetType = _ec2.SubnetType.values;
  final Vpc = _ec2.Vpc.new;
  final VpcArgs = _ec2.VpcArgs.new;
  final VpcEndpointSpec = _ec2.VpcEndpointSpec.new;
  final VpcEndpointSpecArgs = _ec2.VpcEndpointSpec.new;
  final getDefaultVpc = _ec2.getDefaultVpc;
}

class _EcrModuleNamespace {
  _EcrModuleNamespace();
  final BuilderVersion = _ecr.BuilderVersion.values;
  final DockerBuild = _ecr.DockerBuild.new;
  final DockerBuildArgs = _ecr.DockerBuild.new;
  final Image = _ecr.Image.new;
  final ImageArgs = _ecr.ImageArgs.new;
  final LifecyclePolicy = _ecr.LifecyclePolicy.new;
  final LifecyclePolicyArgs = _ecr.LifecyclePolicy.new;
  final LifecyclePolicyRule = _ecr.LifecyclePolicyRule.new;
  final LifecyclePolicyRuleArgs = _ecr.LifecyclePolicyRule.new;
  final LifecycleTagStatus = _ecr.LifecycleTagStatus.values;
  final RegistryImage = _ecr.RegistryImage.new;
  final RegistryImageArgs = _ecr.RegistryImageArgs.new;
  final Repository = _ecr.Repository.new;
  final RepositoryArgs = _ecr.RepositoryArgs.new;
}

class _EcsModuleNamespace {
  _EcsModuleNamespace();
  final EC2Service = _ecs.EC2Service.new;
  final EC2ServiceArgs = _ecs.EC2ServiceArgs.new;
  final EC2ServiceTaskDefinition = _ecs.EC2ServiceTaskDefinition.new;
  final EC2ServiceTaskDefinitionArgs = _ecs.EC2ServiceTaskDefinition.new;
  final EC2TaskDefinition = _ecs.EC2TaskDefinition.new;
  final EC2TaskDefinitionArgs = _ecs.EC2TaskDefinitionArgs.new;
  final FargateService = _ecs.FargateService.new;
  final FargateServiceArgs = _ecs.FargateServiceArgs.new;
  final FargateServiceTaskDefinition = _ecs.FargateServiceTaskDefinition.new;
  final FargateServiceTaskDefinitionArgs = _ecs.FargateServiceTaskDefinition.new;
  final FargateTaskDefinition = _ecs.FargateTaskDefinition.new;
  final FargateTaskDefinitionArgs = _ecs.FargateTaskDefinitionArgs.new;
  final TaskDefinitionContainerDefinition = _ecs.TaskDefinitionContainerDefinition.new;
  final TaskDefinitionContainerDefinitionArgs = _ecs.TaskDefinitionContainerDefinition.new;
  final TaskDefinitionContainerDependency = _ecs.TaskDefinitionContainerDependency.new;
  final TaskDefinitionContainerDependencyArgs = _ecs.TaskDefinitionContainerDependency.new;
  final TaskDefinitionDevice = _ecs.TaskDefinitionDevice.new;
  final TaskDefinitionDeviceArgs = _ecs.TaskDefinitionDevice.new;
  final TaskDefinitionEnvironmentFile = _ecs.TaskDefinitionEnvironmentFile.new;
  final TaskDefinitionEnvironmentFileArgs = _ecs.TaskDefinitionEnvironmentFile.new;
  final TaskDefinitionFirelensConfiguration = _ecs.TaskDefinitionFirelensConfiguration.new;
  final TaskDefinitionFirelensConfigurationArgs = _ecs.TaskDefinitionFirelensConfiguration.new;
  final TaskDefinitionHealthCheck = _ecs.TaskDefinitionHealthCheck.new;
  final TaskDefinitionHealthCheckArgs = _ecs.TaskDefinitionHealthCheck.new;
  final TaskDefinitionHostEntry = _ecs.TaskDefinitionHostEntry.new;
  final TaskDefinitionHostEntryArgs = _ecs.TaskDefinitionHostEntry.new;
  final TaskDefinitionKernelCapabilities = _ecs.TaskDefinitionKernelCapabilities.new;
  final TaskDefinitionKernelCapabilitiesArgs = _ecs.TaskDefinitionKernelCapabilities.new;
  final TaskDefinitionKeyValuePair = _ecs.TaskDefinitionKeyValuePair.new;
  final TaskDefinitionKeyValuePairArgs = _ecs.TaskDefinitionKeyValuePair.new;
  final TaskDefinitionLinuxParameters = _ecs.TaskDefinitionLinuxParameters.new;
  final TaskDefinitionLinuxParametersArgs = _ecs.TaskDefinitionLinuxParameters.new;
  final TaskDefinitionLogConfiguration = _ecs.TaskDefinitionLogConfiguration.new;
  final TaskDefinitionLogConfigurationArgs = _ecs.TaskDefinitionLogConfiguration.new;
  final TaskDefinitionMountPoint = _ecs.TaskDefinitionMountPoint.new;
  final TaskDefinitionMountPointArgs = _ecs.TaskDefinitionMountPoint.new;
  final TaskDefinitionPortMapping = _ecs.TaskDefinitionPortMapping.new;
  final TaskDefinitionPortMappingAppProtocol = _ecs.TaskDefinitionPortMappingAppProtocol.values;
  final TaskDefinitionPortMappingArgs = _ecs.TaskDefinitionPortMapping.new;
  final TaskDefinitionRepositoryCredentials = _ecs.TaskDefinitionRepositoryCredentials.new;
  final TaskDefinitionRepositoryCredentialsArgs = _ecs.TaskDefinitionRepositoryCredentials.new;
  final TaskDefinitionResourceRequirement = _ecs.TaskDefinitionResourceRequirement.new;
  final TaskDefinitionResourceRequirementArgs = _ecs.TaskDefinitionResourceRequirement.new;
  final TaskDefinitionSecret = _ecs.TaskDefinitionSecret.new;
  final TaskDefinitionSecretArgs = _ecs.TaskDefinitionSecret.new;
  final TaskDefinitionSystemControl = _ecs.TaskDefinitionSystemControl.new;
  final TaskDefinitionSystemControlArgs = _ecs.TaskDefinitionSystemControl.new;
  final TaskDefinitionTmpfs = _ecs.TaskDefinitionTmpfs.new;
  final TaskDefinitionTmpfsArgs = _ecs.TaskDefinitionTmpfs.new;
  final TaskDefinitionUlimit = _ecs.TaskDefinitionUlimit.new;
  final TaskDefinitionUlimitArgs = _ecs.TaskDefinitionUlimit.new;
  final TaskDefinitionVolumeFrom = _ecs.TaskDefinitionVolumeFrom.new;
  final TaskDefinitionVolumeFromArgs = _ecs.TaskDefinitionVolumeFrom.new;
}

class _LbModuleNamespace {
  _LbModuleNamespace();
  final ApplicationLoadBalancer = _lb.ApplicationLoadBalancer.new;
  final ApplicationLoadBalancerArgs = _lb.ApplicationLoadBalancerArgs.new;
  final Listener = _lb.Listener.new;
  final ListenerArgs = _lb.Listener.new;
  final NetworkLoadBalancer = _lb.NetworkLoadBalancer.new;
  final NetworkLoadBalancerArgs = _lb.NetworkLoadBalancerArgs.new;
  final TargetGroup = _lb.TargetGroup.new;
  final TargetGroupArgs = _lb.TargetGroup.new;
  final TargetGroupAttachment = _lb.TargetGroupAttachment.new;
  final TargetGroupAttachmentArgs = _lb.TargetGroupAttachmentArgs.new;
}

