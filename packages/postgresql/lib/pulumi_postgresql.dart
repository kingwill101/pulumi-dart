// ignore_for_file: non_constant_identifier_names

library pulumi_postgresql;

import 'package:pulumi_postgresql/index.dart' as _index;
import 'package:pulumi_postgresql/providers.dart' as _providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Database = _index.Database.new;
  final DatabaseArgs = _index.DatabaseArgs.new;
  final DefaultPrivileg = _index.DefaultPrivileg.new;
  final DefaultPrivilegArgs = _index.DefaultPrivilegArgs.new;
  final DefaultPrivileges = _index.DefaultPrivileges.new;
  final DefaultPrivilegesArgs = _index.DefaultPrivilegesArgs.new;
  final Extension = _index.Extension.new;
  final ExtensionArgs = _index.ExtensionArgs.new;
  final FunctionArg = _index.FunctionArg.new;
  final FunctionArgArgs = _index.FunctionArg.new;
  final FunctionArgs = _index.FunctionArgs.new;
  final FunctionType = _index.FunctionType.new;
  final GetSchemasArgs = _index.GetSchemasArgs.new;
  final GetSchemasResult = _index.GetSchemasResult.new;
  final GetSchemasResultArgs = _index.GetSchemasResult.new;
  final GetSequencesArgs = _index.GetSequencesArgs.new;
  final GetSequencesResult = _index.GetSequencesResult.new;
  final GetSequencesResultArgs = _index.GetSequencesResult.new;
  final GetSequencesSequence = _index.GetSequencesSequence.new;
  final GetSequencesSequenceArgs = _index.GetSequencesSequence.new;
  final GetTablesArgs = _index.GetTablesArgs.new;
  final GetTablesResult = _index.GetTablesResult.new;
  final GetTablesResultArgs = _index.GetTablesResult.new;
  final GetTablesTable = _index.GetTablesTable.new;
  final GetTablesTableArgs = _index.GetTablesTable.new;
  final Grant = _index.Grant.new;
  final GrantArgs = _index.GrantArgs.new;
  final GrantRole = _index.GrantRole.new;
  final GrantRoleArgs = _index.GrantRoleArgs.new;
  final PhysicalReplicationSlot = _index.PhysicalReplicationSlot.new;
  final PhysicalReplicationSlotArgs = _index.PhysicalReplicationSlotArgs.new;
  final ProviderClientcert = _index.ProviderClientcert.new;
  final ProviderClientcertArgs = _index.ProviderClientcert.new;
  final Publication = _index.Publication.new;
  final PublicationArgs = _index.PublicationArgs.new;
  final ReplicationSlot = _index.ReplicationSlot.new;
  final ReplicationSlotArgs = _index.ReplicationSlotArgs.new;
  final Role = _index.Role.new;
  final RoleArgs = _index.RoleArgs.new;
  final Schema = _index.Schema.new;
  final SchemaArgs = _index.SchemaArgs.new;
  final SchemaPolicy = _index.SchemaPolicy.new;
  final SchemaPolicyArgs = _index.SchemaPolicy.new;
  final SecurityLabel = _index.SecurityLabel.new;
  final SecurityLabelArgs = _index.SecurityLabelArgs.new;
  final Server = _index.Server.new;
  final ServerArgs = _index.ServerArgs.new;
  final Subscription = _index.Subscription.new;
  final SubscriptionArgs = _index.SubscriptionArgs.new;
  final UserMapping = _index.UserMapping.new;
  final UserMappingArgs = _index.UserMappingArgs.new;
  final getSchemas = _index.getSchemas;
  final getSequences = _index.getSequences;
  final getTables = _index.getTables;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final TerraformConfigArgs = _providers.TerraformConfigArgs.new;
  final TerraformConfigResult = _providers.TerraformConfigResult.new;
  final TerraformConfigResultArgs = _providers.TerraformConfigResult.new;
  final terraformConfig = _providers.terraformConfig;
}

