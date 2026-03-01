// ignore_for_file: non_constant_identifier_names

library pulumi_mysql;

import 'package:pulumi_mysql/index.dart' as _index;
import 'package:pulumi_mysql/providers.dart' as _providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Database = _index.Database.new;
  final DatabaseArgs = _index.DatabaseArgs.new;
  final Grant = _index.Grant.new;
  final GrantArgs = _index.GrantArgs.new;
  final Role = _index.Role.new;
  final RoleArgs = _index.RoleArgs.new;
  final User = _index.User.new;
  final UserArgs = _index.UserArgs.new;
  final UserPassword = _index.UserPassword.new;
  final UserPasswordArgs = _index.UserPasswordArgs.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final TerraformConfigArgs = _providers.TerraformConfigArgs.new;
  final TerraformConfigResult = _providers.TerraformConfigResult.new;
  final TerraformConfigResultArgs = _providers.TerraformConfigResult.new;
  final terraformConfig = _providers.terraformConfig;
}

